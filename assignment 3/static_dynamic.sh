#!/bin/bash

echo "----static----"
echo ""

echo "ls"
ls
echo ""

echo "gcc -c fibbo.c -o fibbo1.o"
gcc -c fibbo.c -o fibbo1.o
echo ""

echo "gcc -c matrix_multi.c -o matrix_mul1.o"
gcc -c matrix_multi.c -o matrix_mul1.o
echo ""

echo "gcc -c main.c -o main_obj.o"
gcc -c main.c -o main_obj.o
echo ""

echo "ls"
ls
echo ""

echo "gcc main_obj.o fibbo1.o matrix_mul1.o -o main_result_static"
gcc main_obj.o fibbo1.o matrix_mul1.o -o main_result_static
echo ""

echo "./main_result_static"
./main_result_static
echo ""

echo "ls"
ls
echo ""


echo "----dynamic----"
echo ""

echo "gcc *.o -shared -o eg_dynamic.so"
gcc *.o -shared -o eg_dynamic.so
echo ""

echo "ls"
ls
echo ""

echo "gcc -o main_result_dynamic main_obj.o -L. eg_dynamic.so"
gcc -o main_result_dynamic main_obj.o -L. eg_dynamic.so
echo ""

echo "./main_result_dynamic"
./main_result_dynamic
echo ""

echo "sudo cp eg_dynamic.so /usr/lib"
sudo cp eg_dynamic.so /usr/lib
echo ""

echo "./main_result_dynamic"
./main_result_dynamic
echo ""