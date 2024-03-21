if ! [ -d bin/ ]; then
echo 'Создаём директорию bin/ с исполняемыми файлами. Attempting to create directory bin/ with executable files.'
mkdir bin/
fi
sleep 1
echo "Компилируем...1"
gcc arrangements_no_repetitions.c -o bin/arrangements_no_repetitions.o
sleep 1
echo "Компилируем...2"
gcc arrangements_with_repetitions.c -o bin/arrangements_with_repetitions.o
sleep 1
echo "Компилируем...3"
gcc combinations.c -o bin/combinations.o
sleep 1
echo "Компилируем...4"
gcc combinations_with_repetitions.c -o bin/combinations_with_repetitions.o
sleep 1
echo "Компилируем...5"
gcc compositions.c -o bin/compositions.o
sleep 1
echo "Компилируем...6"
gcc partitions.c -o bin/partitions.o
sleep 1
echo "Компилируем...7"
gcc permutations.c -o bin/permutations.o
sleep 1
echo "Компилируем...8"
gcc permutations_with_repetitions.c -o bin/permutations_with_repetitions.o
sleep 1
echo "Проверка директории bin/"
ls bin/

