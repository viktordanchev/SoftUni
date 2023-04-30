﻿using System;

namespace _01.RandomizeWords
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] words = Console.ReadLine().Split();

            Random random= new Random();

            for (int i = 0; i < words.Length; i++)
            {
                int randomIndex = random.Next(0, words.Length);
                string currWord = words[i];

                words[i] = words[randomIndex];
                words[randomIndex] = currWord;
            }

            foreach (string word in words)
            {
                Console.WriteLine(word);
            }
        }
    }
}
