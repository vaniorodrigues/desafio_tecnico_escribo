Pequeno programa escrito em dart para o cálculo do somatório de todos os valores inteiros divisíveis por 3 ou 5.

# Instruções:
Para rodar o programa basta clonar o repositório e rodar o arquivo main.dart:

```sh
dart run main.dart 
```
Em seguida, é necessário inserir no terminal o número de entrada o qual deseja-se saber o somatório dos valores, e apertar a tecla ENTER. O resultado irá aparecer no terminal.

# Sobre a implementação:

## Número de entrada:
O usuário que preferir colocar o número de entrada direto no main.dart ou invés do terminal poderá fazer o mesmo ao comentar a linha 5 do código e descomentar a linha 6.

## Complexidade do algoritmo :
No main.dart temos duas funções que resolvem o problema. A primeira delas é por força bruta (linha 48), onde a função testa cada número inteiro entre 3 até o número de entrada, para saber quais são divisíveis por 3 ou 5, e os somados para obter o resultado do somatório. Uma solução nada eficiente, uma vez que a quantidade de execuções do algoritmo vai aumentar linearmente com o tamanho do número de entrada.
Uma solução mais refinada é a utilização da fórmula do somatório de termos de uma progressão aritmética, na qual podemos definir o resultado apenas com o primeiro e último valores da progressão e o intervalo entre eles. Como aqui queremos os números divisíveis por 3 e ou 5, basta começar testando o número de entrada e ir diminuindo até achar o valor máximo das progressões. Como a cada cinco números inteiros, ao menos um vai ser divisível por 3 e ou 5, são necessárias, no máximo, apenas cinco execuções desse algoritmo para achar o termo final das progressões aritméticas. Depois disso, basta calcular a soma de todos os termos das progressões aritméticas de 3 e 5, dada pela fórmula abaixo:

```sh
soma = (a1 + an) * n /2
```

Um único problema é o caso dos números que são ambos múltiplos de 3 e 5, nesse caso eles serão contabilizados duas vezes, uma em cada soma de termos das progressões aritméticas. Esses casos são dos números múltiplos de 15! Dessa forma, basta calcular diminuir do resultado final a soma da progressão aritmética começando em 15 e parando no valor mais próximo do valor de entrada que seja múltiplo de 3 e 5.


