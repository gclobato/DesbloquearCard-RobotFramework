<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['caso'])) {
    $casoDeTeste = escapeshellarg($_POST['caso']);
    $arquivo = "tests/autenticacao.robot";

    // Caminho completo para o executável do Robot, se necessário
    $comando = "robot --test {$casoDeTeste} {$arquivo} 2>&1";

    $saida = shell_exec($comando);
    
    echo "<h3>Resultado da Execução:</h3><pre>$saida</pre>";
    echo '<a href="index.html">Voltar</a>';
} else {
    echo "Nenhum teste selecionado.";
}
?>