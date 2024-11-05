<!-- CREATED by Vladyslav Kuzmenko -->



<?php
require 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $poll_id = $_POST['poll_id'];
    $answers = $_POST['answers'];

    // Зберігання відповідей
    foreach ($answers as $question_id => $answer) {
        $stmt = $pdo->prepare("INSERT INTO results (question_id, answer) VALUES (?, ?)");
        $stmt->execute([$question_id, $answer]);
    }

    // Перенаправлення на сторінку з результатами
    header("Location: results.php?poll_id=$poll_id");
    exit();
}

// Отримання даних опитування
$poll_id = $_GET['poll_id'];
$query = $pdo->prepare("SELECT * FROM polls WHERE id = ?");
$query->execute([$poll_id]);
$poll = $query->fetch();

$query = $pdo->prepare("SELECT * FROM questions WHERE poll_id = ?");
$query->execute([$poll_id]);
$questions = $query->fetchAll();

// Отримання всіх відповідей для статистики
$results = [];
$totalResponses = [];
foreach ($questions as $question) {
    $query = $pdo->prepare("SELECT answer, COUNT(*) as count FROM results WHERE question_id = ? GROUP BY answer");
    $query->execute([$question['id']]);
    $results[$question['id']] = $query->fetchAll(PDO::FETCH_ASSOC);

    $query = $pdo->prepare("SELECT COUNT(*) as total FROM results WHERE question_id = ?");
    $query->execute([$question['id']]);
    $totalResponses[$question['id']] = $query->fetchColumn();
}

?>

<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Результати опитування - <?= htmlspecialchars($poll['title']) ?></title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h1>Результати опитування: <?= htmlspecialchars($poll['title']) ?></h1>

        <div class="statistics">
            <h2>Статистика по відповідям:</h2>
            <ul>
                <?php foreach ($questions as $question): ?>
                    <li>
                        <strong><?= htmlspecialchars($question['question_text']) ?></strong>
                        <ul>
                            <?php 
                            $total = $totalResponses[$question['id']];
                            foreach ($results[$question['id']] as $result): 
                                $percentage = $total > 0 ? ($result['count'] / $total) * 100 : 0;
                            ?>
                                <li>
                                    <?= htmlspecialchars($result['answer']) ?>: <?= $result['count'] ?> відповідей (<?= number_format($percentage, 2) ?>%)
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>

        <div style="text-align: center; margin-top: 20px;">
            <a href="index.php"><button>Назад до опитувань</button></a>
        </div>
    </div>
        <footer style="text-align: center; margin-top: 20px;">
        <p>CREATED by Vladyslav Kuzmenko</p>
    </footer>
</body>
</html>
