{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyNkLBqhxbhgB1LMh4NbYUEx",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "ir",
      "display_name": "R"
    },
    "language_info": {
      "name": "R"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/susee123-work/AI-Powered-Skin-Cancer-Diagonises-/blob/main/ITA0408_STATISTICS_WITH_R_PROGRAMMING_FOR_MEDICAL_APPLICATIONS.R\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "1630KC1eX5jn"
      },
      "outputs": [],
      "source": []
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO :01 To create numeric, character, and logical vectors in R and display their type and content."
      ],
      "metadata": {
        "id": "DUSKY7STYqvF"
      }
    },
    {
      "cell_type": "code",
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "fd647df5",
        "outputId": "ee8d7bb2-80ff-486f-ad82-51bf4ef8d4f4"
      },
      "source": [
        "num_vec <- c(10, 20, 30, 40, 50)\n",
        "cat(\"Numeric Vector:\\n\")\n",
        "print(num_vec)\n",
        "cat(\"Type of numeric vector:\", typeof(num_vec), \"\\n\\n\")\n",
        "char_vec <- c(\"apple\", \"banana\", \"cherry\")\n",
        "cat(\"Character Vector:\\n\")\n",
        "print(char_vec)\n",
        "cat(\"Type of character vector:\", typeof(char_vec), \"\\n\\n\")\n",
        "log_vec <- c(TRUE, FALSE, TRUE, TRUE, FALSE)\n",
        "cat(\"Logical Vector:\\n\")\n",
        "print(log_vec)\n",
        "cat(\"Type of logical vector:\", typeof(log_vec), \"\\n\")\n"
      ],
      "execution_count": 3,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Numeric Vector:\n",
            "[1] 10 20 30 40 50\n",
            "Type of numeric vector: double \n",
            "\n",
            "Character Vector:\n",
            "[1] \"apple\"  \"banana\" \"cherry\"\n",
            "Type of character vector: character \n",
            "\n",
            "Logical Vector:\n",
            "[1]  TRUE FALSE  TRUE  TRUE FALSE\n",
            "Type of logical vector: logical \n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 02 To create labeled matrices of sizes 5×4, 3×3, and 2×2 in R, filled by row and column, and to display their contents."
      ],
      "metadata": {
        "id": "9mGHpQZMZhj3"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "mat1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)\n",
        "rownames(mat1) <- paste(\"Row\", 1:5)\n",
        "colnames(mat1) <- paste(\"Col\", 1:4)\n",
        "cat(\"5x4 Matrix (Filled by Row):\\n\")\n",
        "print(mat1)\n",
        "cat(\"\\n\")\n",
        "\n",
        "mat2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)\n",
        "rownames(mat2) <- paste(\"R\", 1:3)\n",
        "colnames(mat2) <- paste(\"C\", 1:3)\n",
        "cat(\"3x3 Matrix (Filled by Column):\\n\")\n",
        "print(mat2)\n",
        "cat(\"\\n\")\n",
        "\n",
        "mat3 <- matrix(c(10, 20, 30, 40), nrow = 2, ncol = 2, byrow = TRUE)\n",
        "rownames(mat3) <- c(\"First\", \"Second\")\n",
        "colnames(mat3) <- c(\"X\", \"Y\")\n",
        "cat(\"2x2 Matrix (Filled by Row):\\n\")\n",
        "print(mat3)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "yTy3RYODaHdh",
        "outputId": "c16070ce-d571-449a-a73d-b438206d02dc"
      },
      "execution_count": 1,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "5x4 Matrix (Filled by Row):\n",
            "      Col 1 Col 2 Col 3 Col 4\n",
            "Row 1     1     2     3     4\n",
            "Row 2     5     6     7     8\n",
            "Row 3     9    10    11    12\n",
            "Row 4    13    14    15    16\n",
            "Row 5    17    18    19    20\n",
            "\n",
            "3x3 Matrix (Filled by Column):\n",
            "    C 1 C 2 C 3\n",
            "R 1   1   4   7\n",
            "R 2   2   5   8\n",
            "R 3   3   6   9\n",
            "\n",
            "2x2 Matrix (Filled by Row):\n",
            "        X  Y\n",
            "First  10 20\n",
            "Second 30 40\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 03 To write an R program that creates and displays a 3D array with specified rows, columns, and tables.\n",
        "\n"
      ],
      "metadata": {
        "id": "V6NrGsZ1aben"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "data_values <- 1:24   # 24 elements\n",
        "array_3D <- array(data_values, dim = c(3, 4, 2),\n",
        "                  dimnames = list(\n",
        "                    Rows = paste(\"Row\", 1:3),\n",
        "                    Columns = paste(\"Col\", 1:4),\n",
        "                    Tables = paste(\"Table\", 1:2)\n",
        "                  ))\n",
        "\n",
        "cat(\"3D Array:\\n\")\n",
        "print(array_3D)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "r5QRVnC2aot1",
        "outputId": "0215687e-d2ce-46f9-e4fa-36188c6c7e71"
      },
      "execution_count": 4,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "3D Array:\n",
            ", , Tables = Table 1\n",
            "\n",
            "       Columns\n",
            "Rows    Col 1 Col 2 Col 3 Col 4\n",
            "  Row 1     1     4     7    10\n",
            "  Row 2     2     5     8    11\n",
            "  Row 3     3     6     9    12\n",
            "\n",
            ", , Tables = Table 2\n",
            "\n",
            "       Columns\n",
            "Rows    Col 1 Col 2 Col 3 Col 4\n",
            "  Row 1    13    16    19    22\n",
            "  Row 2    14    17    20    23\n",
            "  Row 3    15    18    21    24\n",
            "\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO :04 To create an array from vectors in R, assign dimension names, and print specific elements from the array."
      ],
      "metadata": {
        "id": "e-dmab5Jasi7"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "vector1 <- c(1, 2, 3, 4, 5, 6)\n",
        "vector2 <- c(7, 8, 9, 10, 11, 12)\n",
        "\n",
        "array_data <- array(c(vector1, vector2), dim = c(3, 2, 2),\n",
        "                    dimnames = list(\n",
        "                      Rows = paste(\"Row\", 1:3),\n",
        "                      Columns = paste(\"Col\", 1:2),\n",
        "                      Tables = paste(\"Table\", 1:2)\n",
        "                    ))\n",
        "\n",
        "cat(\"Full 3D Array:\\n\")\n",
        "print(array_data)\n",
        "\n",
        "cat(\"\\nSpecific Elements:\\n\")\n",
        "cat(\"Element at Row 2, Column 1, Table 1: \", array_data[\"Row 2\", \"Col 1\", \"Table 1\"], \"\\n\")\n",
        "cat(\"Element at Row 3, Column 2, Table 2: \", array_data[\"Row 3\", \"Col 2\", \"Table 2\"], \"\\n\")\n",
        "\n",
        "cat(\"\\nElements in Table 1:\\n\")\n",
        "print(array_data[, , \"Table 1\"])\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "iz-MjgJSazLm",
        "outputId": "4e00d158-16f7-4fb2-de54-152d77cf6193"
      },
      "execution_count": 6,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Full 3D Array:\n",
            ", , Tables = Table 1\n",
            "\n",
            "       Columns\n",
            "Rows    Col 1 Col 2\n",
            "  Row 1     1     4\n",
            "  Row 2     2     5\n",
            "  Row 3     3     6\n",
            "\n",
            ", , Tables = Table 2\n",
            "\n",
            "       Columns\n",
            "Rows    Col 1 Col 2\n",
            "  Row 1     7    10\n",
            "  Row 2     8    11\n",
            "  Row 3     9    12\n",
            "\n",
            "\n",
            "Specific Elements:\n",
            "Element at Row 2, Column 1, Table 1:  2 \n",
            "Element at Row 3, Column 2, Table 2:  12 \n",
            "\n",
            "Elements in Table 1:\n",
            "       Columns\n",
            "Rows    Col 1 Col 2\n",
            "  Row 1     1     4\n",
            "  Row 2     2     5\n",
            "  Row 3     3     6\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 05 To create and manipulate factor variables in R using examples such as the women’s dataset heights and a random sample of LETTERS."
      ],
      "metadata": {
        "id": "Vznc_C-BbDdD"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "cat(\"Example 1: Women's Height Categories\\n\")\n",
        "data(women)\n",
        "print(women)\n",
        "height_factor <- cut(women$height, breaks = 3,\n",
        "                     labels = c(\"Short\", \"Medium\", \"Tall\"))\n",
        "cat(\"\\nHeight Factor:\\n\")\n",
        "print(height_factor)\n",
        "cat(\"Levels of Height Factor:\\n\")\n",
        "print(levels(height_factor))\n",
        "cat(\"\\nExample 2: Random LETTERS Sample\\n\")\n",
        "set.seed(123)  # for reproducibility\n",
        "letters_sample <- sample(LETTERS[1:6], 10, replace = TRUE)\n",
        "print(letters_sample)\n",
        "letter_factor <- factor(letters_sample)\n",
        "cat(\"\\nLetter Factor:\\n\")\n",
        "print(letter_factor)\n",
        "cat(\"Levels of Letter Factor:\\n\")\n",
        "print(levels(letter_factor))\n",
        "reordered_factor <- factor(letter_factor, levels = c(\"F\", \"E\", \"D\", \"C\", \"B\", \"A\"))\n",
        "cat(\"\\nReordered Factor Levels:\\n\")\n",
        "print(reordered_factor)\n",
        "\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "EeVeNIlSbJrH",
        "outputId": "2f6293b6-ede9-4eea-9261-cefdfb536a54"
      },
      "execution_count": 7,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Example 1: Women's Height Categories\n",
            "   height weight\n",
            "1      58    115\n",
            "2      59    117\n",
            "3      60    120\n",
            "4      61    123\n",
            "5      62    126\n",
            "6      63    129\n",
            "7      64    132\n",
            "8      65    135\n",
            "9      66    139\n",
            "10     67    142\n",
            "11     68    146\n",
            "12     69    150\n",
            "13     70    154\n",
            "14     71    159\n",
            "15     72    164\n",
            "\n",
            "Height Factor:\n",
            " [1] Short  Short  Short  Short  Short  Medium Medium Medium Medium Medium\n",
            "[11] Tall   Tall   Tall   Tall   Tall  \n",
            "Levels: Short Medium Tall\n",
            "Levels of Height Factor:\n",
            "[1] \"Short\"  \"Medium\" \"Tall\"  \n",
            "\n",
            "Example 2: Random LETTERS Sample\n",
            " [1] \"C\" \"F\" \"C\" \"B\" \"B\" \"F\" \"C\" \"E\" \"D\" \"F\"\n",
            "\n",
            "Letter Factor:\n",
            " [1] C F C B B F C E D F\n",
            "Levels: B C D E F\n",
            "Levels of Letter Factor:\n",
            "[1] \"B\" \"C\" \"D\" \"E\" \"F\"\n",
            "\n",
            "Reordered Factor Levels:\n",
            " [1] C F C B B F C E D F\n",
            "Levels: F E D C B A\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 06 To create an R list that contains different data types such as vectors, matrices, and functions, and to display its contents."
      ],
      "metadata": {
        "id": "0k_qxfu7bO1W"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "num_vector <- c(10, 20, 30, 40, 50)\n",
        "num_matrix <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)\n",
        "square_function <- function(x) {\n",
        "  return(x^2)\n",
        "}\n",
        "my_list <- list(\n",
        "  Vector = num_vector,\n",
        "  Matrix = num_matrix,\n",
        "  Function = square_function\n",
        ")\n",
        "print(my_list)\n",
        "cat(\"\\nVector contents:\\n\")\n",
        "print(my_list$Vector)\n",
        "\n",
        "cat(\"\\nMatrix contents:\\n\")\n",
        "print(my_list$Matrix)\n",
        "\n",
        "cat(\"\\nFunction output (square of 5):\\n\")\n",
        "print(my_list$Function(5))\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "-WU5CT5zbXGj",
        "outputId": "73436216-3a0b-4fee-bc3b-d2fcb3179d68"
      },
      "execution_count": 8,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "$Vector\n",
            "[1] 10 20 30 40 50\n",
            "\n",
            "$Matrix\n",
            "     [,1] [,2]\n",
            "[1,]    1    3\n",
            "[2,]    2    4\n",
            "\n",
            "$Function\n",
            "function (x) \n",
            "{\n",
            "    return(x^2)\n",
            "}\n",
            "\n",
            "\n",
            "Vector contents:\n",
            "[1] 10 20 30 40 50\n",
            "\n",
            "Matrix contents:\n",
            "     [,1] [,2]\n",
            "[1,]    1    3\n",
            "[2,]    2    4\n",
            "\n",
            "Function output (square of 5):\n",
            "[1] 25\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 07 To write R programs to perform basic tasks:"
      ],
      "metadata": {
        "id": "gAcmeiWabjXs"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "num <- 36\n",
        "factors <- c()\n",
        "for (i in 1:num) {\n",
        "  if (num %% i == 0) {\n",
        "    factors <- c(factors, i)\n",
        "  }\n",
        "}\n",
        "cat(\"Factors of\", num, \"are:\", factors, \"\\n\")\n",
        "random_numbers <- sample(-50:50, 10, replace = TRUE)\n",
        "cat(\"Random numbers between -50 and 50:\", random_numbers, \"\\n\")\n",
        "for (i in 1:100) {\n",
        "  if (i %% 3 == 0 && i %% 5 == 0) {\n",
        "    print(\"FizzBuzz\")\n",
        "  } else if (i %% 3 == 0) {\n",
        "    print(\"Fizz\")\n",
        "  } else if (i %% 5 == 0) {\n",
        "    print(\"Buzz\")\n",
        "  } else {\n",
        "    print(i)\n",
        "  }\n",
        "}\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "K2ph20g6bp7W",
        "outputId": "d0d2baba-2cdb-45bc-f90a-9782db4dea5c"
      },
      "execution_count": 9,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Factors of 36 are: 1 2 3 4 6 9 12 18 36 \n",
            "Random numbers between -50 and 50: -8 25 -36 -19 -44 -42 -10 23 -28 -24 \n",
            "[1] 1\n",
            "[1] 2\n",
            "[1] \"Fizz\"\n",
            "[1] 4\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 7\n",
            "[1] 8\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n",
            "[1] 11\n",
            "[1] \"Fizz\"\n",
            "[1] 13\n",
            "[1] 14\n",
            "[1] \"FizzBuzz\"\n",
            "[1] 16\n",
            "[1] 17\n",
            "[1] \"Fizz\"\n",
            "[1] 19\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 22\n",
            "[1] 23\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n",
            "[1] 26\n",
            "[1] \"Fizz\"\n",
            "[1] 28\n",
            "[1] 29\n",
            "[1] \"FizzBuzz\"\n",
            "[1] 31\n",
            "[1] 32\n",
            "[1] \"Fizz\"\n",
            "[1] 34\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 37\n",
            "[1] 38\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n",
            "[1] 41\n",
            "[1] \"Fizz\"\n",
            "[1] 43\n",
            "[1] 44\n",
            "[1] \"FizzBuzz\"\n",
            "[1] 46\n",
            "[1] 47\n",
            "[1] \"Fizz\"\n",
            "[1] 49\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 52\n",
            "[1] 53\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n",
            "[1] 56\n",
            "[1] \"Fizz\"\n",
            "[1] 58\n",
            "[1] 59\n",
            "[1] \"FizzBuzz\"\n",
            "[1] 61\n",
            "[1] 62\n",
            "[1] \"Fizz\"\n",
            "[1] 64\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 67\n",
            "[1] 68\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n",
            "[1] 71\n",
            "[1] \"Fizz\"\n",
            "[1] 73\n",
            "[1] 74\n",
            "[1] \"FizzBuzz\"\n",
            "[1] 76\n",
            "[1] 77\n",
            "[1] \"Fizz\"\n",
            "[1] 79\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 82\n",
            "[1] 83\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n",
            "[1] 86\n",
            "[1] \"Fizz\"\n",
            "[1] 88\n",
            "[1] 89\n",
            "[1] \"FizzBuzz\"\n",
            "[1] 91\n",
            "[1] 92\n",
            "[1] \"Fizz\"\n",
            "[1] 94\n",
            "[1] \"Buzz\"\n",
            "[1] \"Fizz\"\n",
            "[1] 97\n",
            "[1] 98\n",
            "[1] \"Fizz\"\n",
            "[1] \"Buzz\"\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 08 To generate a set of random numbers following a normal (Gaussian) distribution and to count how many values fall within specified intervals."
      ],
      "metadata": {
        "id": "mX8WpZUFbt8O"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "set.seed(123)\n",
        "x <- rnorm(1000, mean = 50, sd = 10)\n",
        "table(cut(x, breaks = seq(20, 80, by = 5)))\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 104
        },
        "id": "jweK5Uxnb1Cx",
        "outputId": "3498e5b3-4cbf-453e-9d20-2c640397cd2a"
      },
      "execution_count": 10,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "(20,25] (25,30] (30,35] (35,40] (40,45] (45,50] (50,55] (55,60] (60,65] (65,70] \n",
              "      5      14      47      99     130     200     202     146      83      46 \n",
              "(70,75] (75,80] \n",
              "     22       5 "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 09 To create a blank plotting region with defined x and y axis limits for future data visualization."
      ],
      "metadata": {
        "id": "sslYFW7Hb4Wl"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "plot(1, type = \"n\", xlim = c(0, 10), ylim = c(-5, 5), xlab = \"X axis\", ylab = \"Y axis\", main = \"Empty plot with limits\")\n",
        "grid()\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 437
        },
        "id": "tiVvdM-KcCVH",
        "outputId": "906104dc-6ca0-479f-b247-07e5df5d894c"
      },
      "execution_count": 11,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Empty plot with limits”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAAC8VBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU3Nzc4ODg5OTk7Ozs8PDw9\nPT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tMTExNTU1OTk5P\nT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1eXl5fX19gYGBh\nYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29wcHBxcXFycnJz\nc3N0dHR1dXV2dnZ3d3d4eHh5eXl7e3t8fHx9fX1+fn5/f3+AgICBgYGCgoKDg4OEhISFhYWG\nhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OUlJSVlZWWlpaXl5eY\nmJiZmZmampqbm5ucnJydnZ2enp6fn5+hoaGioqKjo6OkpKSlpaWmpqanp6eoqKipqamqqqqr\nq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4uLi5ubm6urq7u7u8vLy9\nvb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnKysrLy8vMzMzNzc3Ozs7P\nz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc3Nzd3d3e3t7f39/g4ODh\n4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u7u7v7+/w8PDx8fHy8vLz\n8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7///9nBj4iAAAACXBIWXMAABJ0\nAAASdAHeZh94AAAgAElEQVR4nO2de3ycZZ2377RNz6UULEJLaSm6KAIFAVtAsSxCOXvCAu8L\n0gWkHApbEFBBcAGXLrDIIsoqB1c5yGFd3pdlt2J1ERA5CGKLUM5pBCy0UEKbtmmev/aZmSRN\n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\nAABJRU5ErkJggg=="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 10 To create and manipulate a data frame containing student exam details, perform extraction, addition, sorting, and file saving operations."
      ],
      "metadata": {
        "id": "Ocg8bSekcF6L"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "exam_data <- data.frame(name = c(\"Anil\", \"Beena\", \"Chitra\", \"Deep\"),\n",
        "                        score = c(85, 67, 92, 74),\n",
        "                        attempts = c(1, 2, 1, 3),\n",
        "                        qualify = c(TRUE, FALSE, TRUE, TRUE),\n",
        "                        stringsAsFactors = FALSE)\n",
        "\n",
        "exam_data[2, ]\n",
        "subset(exam_data, score >= 75)\n",
        "new_row <- data.frame(name = \"Esha\", score = 78, attempts = 1, qualify = TRUE)\n",
        "exam_data <- rbind(exam_data, new_row)\n",
        "exam_data$grade <- ifelse(exam_data$score >= 85, \"A\", ifelse(exam_data$score >= 75, \"B\", \"C\"))\n",
        "exam_data <- exam_data[order(-exam_data$score), ]\n",
        "write.csv(exam_data, \"exam_data.csv\", row.names = FALSE)\n",
        "exam_data\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 510
        },
        "id": "lnr2r2HVcL4G",
        "outputId": "fa27efb5-f64f-47a4-9f42-fba052e14596"
      },
      "execution_count": 12,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A data.frame: 1 × 4</caption>\n",
              "<thead>\n",
              "\t<tr><th></th><th scope=col>name</th><th scope=col>score</th><th scope=col>attempts</th><th scope=col>qualify</th></tr>\n",
              "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>2</th><td>Beena</td><td>67</td><td>2</td><td>FALSE</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA data.frame: 1 × 4\n\n| <!--/--> | name &lt;chr&gt; | score &lt;dbl&gt; | attempts &lt;dbl&gt; | qualify &lt;lgl&gt; |\n|---|---|---|---|---|\n| 2 | Beena | 67 | 2 | FALSE |\n\n",
            "text/latex": "A data.frame: 1 × 4\n\\begin{tabular}{r|llll}\n  & name & score & attempts & qualify\\\\\n  & <chr> & <dbl> & <dbl> & <lgl>\\\\\n\\hline\n\t2 & Beena & 67 & 2 & FALSE\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  name  score attempts qualify\n",
              "2 Beena 67    2        FALSE  "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A data.frame: 2 × 4</caption>\n",
              "<thead>\n",
              "\t<tr><th></th><th scope=col>name</th><th scope=col>score</th><th scope=col>attempts</th><th scope=col>qualify</th></tr>\n",
              "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>1</th><td>Anil  </td><td>85</td><td>1</td><td>TRUE</td></tr>\n",
              "\t<tr><th scope=row>3</th><td>Chitra</td><td>92</td><td>1</td><td>TRUE</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA data.frame: 2 × 4\n\n| <!--/--> | name &lt;chr&gt; | score &lt;dbl&gt; | attempts &lt;dbl&gt; | qualify &lt;lgl&gt; |\n|---|---|---|---|---|\n| 1 | Anil   | 85 | 1 | TRUE |\n| 3 | Chitra | 92 | 1 | TRUE |\n\n",
            "text/latex": "A data.frame: 2 × 4\n\\begin{tabular}{r|llll}\n  & name & score & attempts & qualify\\\\\n  & <chr> & <dbl> & <dbl> & <lgl>\\\\\n\\hline\n\t1 & Anil   & 85 & 1 & TRUE\\\\\n\t3 & Chitra & 92 & 1 & TRUE\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  name   score attempts qualify\n",
              "1 Anil   85    1        TRUE   \n",
              "3 Chitra 92    1        TRUE   "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A data.frame: 5 × 5</caption>\n",
              "<thead>\n",
              "\t<tr><th></th><th scope=col>name</th><th scope=col>score</th><th scope=col>attempts</th><th scope=col>qualify</th><th scope=col>grade</th></tr>\n",
              "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;lgl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>3</th><td>Chitra</td><td>92</td><td>1</td><td> TRUE</td><td>A</td></tr>\n",
              "\t<tr><th scope=row>1</th><td>Anil  </td><td>85</td><td>1</td><td> TRUE</td><td>A</td></tr>\n",
              "\t<tr><th scope=row>5</th><td>Esha  </td><td>78</td><td>1</td><td> TRUE</td><td>B</td></tr>\n",
              "\t<tr><th scope=row>4</th><td>Deep  </td><td>74</td><td>3</td><td> TRUE</td><td>C</td></tr>\n",
              "\t<tr><th scope=row>2</th><td>Beena </td><td>67</td><td>2</td><td>FALSE</td><td>C</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA data.frame: 5 × 5\n\n| <!--/--> | name &lt;chr&gt; | score &lt;dbl&gt; | attempts &lt;dbl&gt; | qualify &lt;lgl&gt; | grade &lt;chr&gt; |\n|---|---|---|---|---|---|\n| 3 | Chitra | 92 | 1 |  TRUE | A |\n| 1 | Anil   | 85 | 1 |  TRUE | A |\n| 5 | Esha   | 78 | 1 |  TRUE | B |\n| 4 | Deep   | 74 | 3 |  TRUE | C |\n| 2 | Beena  | 67 | 2 | FALSE | C |\n\n",
            "text/latex": "A data.frame: 5 × 5\n\\begin{tabular}{r|lllll}\n  & name & score & attempts & qualify & grade\\\\\n  & <chr> & <dbl> & <dbl> & <lgl> & <chr>\\\\\n\\hline\n\t3 & Chitra & 92 & 1 &  TRUE & A\\\\\n\t1 & Anil   & 85 & 1 &  TRUE & A\\\\\n\t5 & Esha   & 78 & 1 &  TRUE & B\\\\\n\t4 & Deep   & 74 & 3 &  TRUE & C\\\\\n\t2 & Beena  & 67 & 2 & FALSE & C\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  name   score attempts qualify grade\n",
              "3 Chitra 92    1         TRUE   A    \n",
              "1 Anil   85    1         TRUE   A    \n",
              "5 Esha   78    1         TRUE   B    \n",
              "4 Deep   74    3         TRUE   C    \n",
              "2 Beena  67    2        FALSE   C    "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 11 To read data from an external CSV file and display its contents with structural details."
      ],
      "metadata": {
        "id": "Wu00LuE-cPzc"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "filepath <- \"exam_data.csv\"\n",
        "if(!file.exists(filepath)) stop(\"File does not exist: exam_data.csv\")\n",
        "df <- read.csv(filepath, stringsAsFactors = FALSE)\n",
        "print(df)\n",
        "str(df)\n",
        "summary(df)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 468
        },
        "id": "DEMfQV7KcbHe",
        "outputId": "1024df04-b0c9-48c2-c27d-ee856637d240"
      },
      "execution_count": 13,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "    name score attempts qualify grade\n",
            "1 Chitra    92        1    TRUE     A\n",
            "2   Anil    85        1    TRUE     A\n",
            "3   Esha    78        1    TRUE     B\n",
            "4   Deep    74        3    TRUE     C\n",
            "5  Beena    67        2   FALSE     C\n",
            "'data.frame':\t5 obs. of  5 variables:\n",
            " $ name    : chr  \"Chitra\" \"Anil\" \"Esha\" \"Deep\" ...\n",
            " $ score   : int  92 85 78 74 67\n",
            " $ attempts: int  1 1 1 3 2\n",
            " $ qualify : logi  TRUE TRUE TRUE TRUE FALSE\n",
            " $ grade   : chr  \"A\" \"A\" \"B\" \"C\" ...\n"
          ]
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "     name               score         attempts    qualify       \n",
              " Length:5           Min.   :67.0   Min.   :1.0   Mode :logical  \n",
              " Class :character   1st Qu.:74.0   1st Qu.:1.0   FALSE:1        \n",
              " Mode  :character   Median :78.0   Median :1.0   TRUE :4        \n",
              "                    Mean   :79.2   Mean   :1.6                  \n",
              "                    3rd Qu.:85.0   3rd Qu.:2.0                  \n",
              "                    Max.   :92.0   Max.   :3.0                  \n",
              "    grade          \n",
              " Length:5          \n",
              " Class :character  \n",
              " Mode  :character  \n",
              "                   \n",
              "                   \n",
              "                   "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 12 To reshape and compute monthly average values of selected parameters from the built-in airquality dataset."
      ],
      "metadata": {
        "id": "K-DTznR5ces3"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "data(\"airquality\")\n",
        "aq <- na.omit(airquality)\n",
        "aq$Month <- factor(aq$Month, levels = 5:9, labels = c(\"May\",\"June\",\"July\",\"August\",\"September\"))\n",
        "monthly_avg <- aggregate(cbind(Ozone, Solar.R, Wind, Temp) ~ Month, data = aq, FUN = mean)\n",
        "print(monthly_avg)\n",
        "\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "LctpxEAIck0i",
        "outputId": "85f674eb-c7c6-4c52-ccee-c1d83d854b0a"
      },
      "execution_count": 14,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "      Month    Ozone  Solar.R      Wind     Temp\n",
            "1       May 24.12500 182.0417 11.504167 66.45833\n",
            "2      June 29.44444 184.2222 12.177778 78.22222\n",
            "3      July 59.11538 216.4231  8.523077 83.88462\n",
            "4    August 60.00000 173.0870  8.860870 83.69565\n",
            "5 September 31.44828 168.2069 10.075862 76.89655\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 13 To combine multiple arrays or vectors into a single matrix by rows."
      ],
      "metadata": {
        "id": "U7hTGJ_9cnuU"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "a <- c(1,2,3)\n",
        "b <- c(4,5,6)\n",
        "c <- c(7,8,9)\n",
        "mat <- rbind(a, b, c)\n",
        "mat\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 146
        },
        "id": "_cLjHpTfcsEG",
        "outputId": "0802180c-bbb5-4d1e-e3dc-e5bf47b481f8"
      },
      "execution_count": 15,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A matrix: 3 × 3 of type dbl</caption>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>a</th><td>1</td><td>2</td><td>3</td></tr>\n",
              "\t<tr><th scope=row>b</th><td>4</td><td>5</td><td>6</td></tr>\n",
              "\t<tr><th scope=row>c</th><td>7</td><td>8</td><td>9</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA matrix: 3 × 3 of type dbl\n\n| a | 1 | 2 | 3 |\n| b | 4 | 5 | 6 |\n| c | 7 | 8 | 9 |\n\n",
            "text/latex": "A matrix: 3 × 3 of type dbl\n\\begin{tabular}{r|lll}\n\ta & 1 & 2 & 3\\\\\n\tb & 4 & 5 & 6\\\\\n\tc & 7 & 8 & 9\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  [,1] [,2] [,3]\n",
              "a 1    2    3   \n",
              "b 4    5    6   \n",
              "c 7    8    9   "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 14 To analyze and transform the ChickWeight dataset by sorting and reshaping by diet."
      ],
      "metadata": {
        "id": "0gsTiJShcvWg"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "data(\"ChickWeight\")\n",
        "cw_sorted <- ChickWeight[order(ChickWeight$weight, decreasing = TRUE), ]\n",
        "print(head(cw_sorted, 6))\n",
        "diet_mean_time <- aggregate(weight ~ Diet + Time, data = ChickWeight, FUN = mean)\n",
        "print(diet_mean_time)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "QFX2qbFdc3pY",
        "outputId": "1aff7281-b1ef-4438-9b1c-8344b9d5424e"
      },
      "execution_count": 16,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "    weight Time Chick Diet\n",
            "400    373   21    35    3\n",
            "399    361   20    35    3\n",
            "388    341   21    34    3\n",
            "398    332   18    35    3\n",
            "232    331   21    21    2\n",
            "387    327   20    34    3\n",
            "   Diet Time    weight\n",
            "1     1    0  41.40000\n",
            "2     2    0  40.70000\n",
            "3     3    0  40.80000\n",
            "4     4    0  41.00000\n",
            "5     1    2  47.25000\n",
            "6     2    2  49.40000\n",
            "7     3    2  50.40000\n",
            "8     4    2  51.80000\n",
            "9     1    4  56.47368\n",
            "10    2    4  59.80000\n",
            "11    3    4  62.20000\n",
            "12    4    4  64.50000\n",
            "13    1    6  66.78947\n",
            "14    2    6  75.40000\n",
            "15    3    6  77.90000\n",
            "16    4    6  83.90000\n",
            "17    1    8  79.68421\n",
            "18    2    8  91.70000\n",
            "19    3    8  98.40000\n",
            "20    4    8 105.60000\n",
            "21    1   10  93.05263\n",
            "22    2   10 108.50000\n",
            "23    3   10 117.10000\n",
            "24    4   10 126.00000\n",
            "25    1   12 108.52632\n",
            "26    2   12 131.30000\n",
            "27    3   12 144.40000\n",
            "28    4   12 151.40000\n",
            "29    1   14 123.38889\n",
            "30    2   14 141.90000\n",
            "31    3   14 164.50000\n",
            "32    4   14 161.80000\n",
            "33    1   16 144.64706\n",
            "34    2   16 164.70000\n",
            "35    3   16 197.40000\n",
            "36    4   16 182.00000\n",
            "37    1   18 158.94118\n",
            "38    2   18 187.70000\n",
            "39    3   18 233.10000\n",
            "40    4   18 202.90000\n",
            "41    1   20 170.41176\n",
            "42    2   20 205.60000\n",
            "43    3   20 258.90000\n",
            "44    4   20 233.88889\n",
            "45    1   21 177.75000\n",
            "46    2   21 214.70000\n",
            "47    3   21 270.30000\n",
            "48    4   21 238.55556\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 15 To perform exploratory data analysis (EDA) on the iris dataset and examine species-based variations."
      ],
      "metadata": {
        "id": "ql8ckytrc8m9"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "data(\"iris\")\n",
        "dim(iris)\n",
        "summary(iris)\n",
        "sapply(iris[1:4], sd)\n",
        "quantile(iris$Sepal.Length, probs = c(0.0, 0.25, 0.5, 0.75, 1.0))\n",
        "library(dplyr)\n",
        "iris_grouped <- iris %>% group_by(Species) %>% summarise(across(where(is.numeric), list(mean = mean, sd = sd)))\n",
        "iris_grouped\n",
        "iris$petal_ratio <- iris$Petal.Length / iris$Petal.Width\n",
        "pivot <- iris %>% group_by(Species) %>% summarise(avg_petal_ratio = mean(petal_ratio))\n",
        "iris$sepal_cat <- cut(iris$Sepal.Length, breaks = c(4,5,6,7.9), labels = c(\"Small\",\"Medium\",\"Large\"))\n",
        "table(iris$sepal_cat, iris$Species)\n",
        "\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 817
        },
        "id": "3xV5ZgxVdDRH",
        "outputId": "3166a336-7765-4c6c-c9d2-fb51edc88b1c"
      },
      "execution_count": 17,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".list-inline {list-style: none; margin:0; padding: 0}\n",
              ".list-inline>li {display: inline-block}\n",
              ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
              "</style>\n",
              "<ol class=list-inline><li>150</li><li>5</li></ol>\n"
            ],
            "text/markdown": "1. 150\n2. 5\n\n\n",
            "text/latex": "\\begin{enumerate*}\n\\item 150\n\\item 5\n\\end{enumerate*}\n",
            "text/plain": [
              "[1] 150   5"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   \n",
              " Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  \n",
              " 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  \n",
              " Median :5.800   Median :3.000   Median :4.350   Median :1.300  \n",
              " Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  \n",
              " 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  \n",
              " Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  \n",
              "       Species  \n",
              " setosa    :50  \n",
              " versicolor:50  \n",
              " virginica :50  \n",
              "                \n",
              "                \n",
              "                "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".dl-inline {width: auto; margin:0; padding: 0}\n",
              ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
              ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
              ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
              "</style><dl class=dl-inline><dt>Sepal.Length</dt><dd>0.828066127977863</dd><dt>Sepal.Width</dt><dd>0.435866284936698</dd><dt>Petal.Length</dt><dd>1.76529823325947</dd><dt>Petal.Width</dt><dd>0.762237668960347</dd></dl>\n"
            ],
            "text/markdown": "Sepal.Length\n:   0.828066127977863Sepal.Width\n:   0.435866284936698Petal.Length\n:   1.76529823325947Petal.Width\n:   0.762237668960347\n\n",
            "text/latex": "\\begin{description*}\n\\item[Sepal.Length] 0.828066127977863\n\\item[Sepal.Width] 0.435866284936698\n\\item[Petal.Length] 1.76529823325947\n\\item[Petal.Width] 0.762237668960347\n\\end{description*}\n",
            "text/plain": [
              "Sepal.Length  Sepal.Width Petal.Length  Petal.Width \n",
              "   0.8280661    0.4358663    1.7652982    0.7622377 "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".dl-inline {width: auto; margin:0; padding: 0}\n",
              ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
              ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
              ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
              "</style><dl class=dl-inline><dt>0%</dt><dd>4.3</dd><dt>25%</dt><dd>5.1</dd><dt>50%</dt><dd>5.8</dd><dt>75%</dt><dd>6.4</dd><dt>100%</dt><dd>7.9</dd></dl>\n"
            ],
            "text/markdown": "0%\n:   4.325%\n:   5.150%\n:   5.875%\n:   6.4100%\n:   7.9\n\n",
            "text/latex": "\\begin{description*}\n\\item[0\\textbackslash{}\\%] 4.3\n\\item[25\\textbackslash{}\\%] 5.1\n\\item[50\\textbackslash{}\\%] 5.8\n\\item[75\\textbackslash{}\\%] 6.4\n\\item[100\\textbackslash{}\\%] 7.9\n\\end{description*}\n",
            "text/plain": [
              "  0%  25%  50%  75% 100% \n",
              " 4.3  5.1  5.8  6.4  7.9 "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "\n",
            "Attaching package: ‘dplyr’\n",
            "\n",
            "\n",
            "The following objects are masked from ‘package:stats’:\n",
            "\n",
            "    filter, lag\n",
            "\n",
            "\n",
            "The following objects are masked from ‘package:base’:\n",
            "\n",
            "    intersect, setdiff, setequal, union\n",
            "\n",
            "\n"
          ]
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A tibble: 3 × 9</caption>\n",
              "<thead>\n",
              "\t<tr><th scope=col>Species</th><th scope=col>Sepal.Length_mean</th><th scope=col>Sepal.Length_sd</th><th scope=col>Sepal.Width_mean</th><th scope=col>Sepal.Width_sd</th><th scope=col>Petal.Length_mean</th><th scope=col>Petal.Length_sd</th><th scope=col>Petal.Width_mean</th><th scope=col>Petal.Width_sd</th></tr>\n",
              "\t<tr><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><td>setosa    </td><td>5.006</td><td>0.3524897</td><td>3.428</td><td>0.3790644</td><td>1.462</td><td>0.1736640</td><td>0.246</td><td>0.1053856</td></tr>\n",
              "\t<tr><td>versicolor</td><td>5.936</td><td>0.5161711</td><td>2.770</td><td>0.3137983</td><td>4.260</td><td>0.4699110</td><td>1.326</td><td>0.1977527</td></tr>\n",
              "\t<tr><td>virginica </td><td>6.588</td><td>0.6358796</td><td>2.974</td><td>0.3224966</td><td>5.552</td><td>0.5518947</td><td>2.026</td><td>0.2746501</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA tibble: 3 × 9\n\n| Species &lt;fct&gt; | Sepal.Length_mean &lt;dbl&gt; | Sepal.Length_sd &lt;dbl&gt; | Sepal.Width_mean &lt;dbl&gt; | Sepal.Width_sd &lt;dbl&gt; | Petal.Length_mean &lt;dbl&gt; | Petal.Length_sd &lt;dbl&gt; | Petal.Width_mean &lt;dbl&gt; | Petal.Width_sd &lt;dbl&gt; |\n|---|---|---|---|---|---|---|---|---|\n| setosa     | 5.006 | 0.3524897 | 3.428 | 0.3790644 | 1.462 | 0.1736640 | 0.246 | 0.1053856 |\n| versicolor | 5.936 | 0.5161711 | 2.770 | 0.3137983 | 4.260 | 0.4699110 | 1.326 | 0.1977527 |\n| virginica  | 6.588 | 0.6358796 | 2.974 | 0.3224966 | 5.552 | 0.5518947 | 2.026 | 0.2746501 |\n\n",
            "text/latex": "A tibble: 3 × 9\n\\begin{tabular}{lllllllll}\n Species & Sepal.Length\\_mean & Sepal.Length\\_sd & Sepal.Width\\_mean & Sepal.Width\\_sd & Petal.Length\\_mean & Petal.Length\\_sd & Petal.Width\\_mean & Petal.Width\\_sd\\\\\n <fct> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n\\hline\n\t setosa     & 5.006 & 0.3524897 & 3.428 & 0.3790644 & 1.462 & 0.1736640 & 0.246 & 0.1053856\\\\\n\t versicolor & 5.936 & 0.5161711 & 2.770 & 0.3137983 & 4.260 & 0.4699110 & 1.326 & 0.1977527\\\\\n\t virginica  & 6.588 & 0.6358796 & 2.974 & 0.3224966 & 5.552 & 0.5518947 & 2.026 & 0.2746501\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  Species    Sepal.Length_mean Sepal.Length_sd Sepal.Width_mean Sepal.Width_sd\n",
              "1 setosa     5.006             0.3524897       3.428            0.3790644     \n",
              "2 versicolor 5.936             0.5161711       2.770            0.3137983     \n",
              "3 virginica  6.588             0.6358796       2.974            0.3224966     \n",
              "  Petal.Length_mean Petal.Length_sd Petal.Width_mean Petal.Width_sd\n",
              "1 1.462             0.1736640       0.246            0.1053856     \n",
              "2 4.260             0.4699110       1.326            0.1977527     \n",
              "3 5.552             0.5518947       2.026            0.2746501     "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "        \n",
              "         setosa versicolor virginica\n",
              "  Small      28          3         1\n",
              "  Medium     22         27         8\n",
              "  Large       0         20        41"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 16 To analyze the USArrests dataset and identify states with extreme crime rates, compute correlations, and visualize trends."
      ],
      "metadata": {
        "id": "jUXuPaTEdSZv"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "data(\"USArrests\")\n",
        "arrests <- USArrests\n",
        "summary(arrests)\n",
        "state_with_max_rape <- rownames(arrests)[which.max(arrests$Rape)]\n",
        "max_murder <- max(arrests$Murder); min_murder <- min(arrests$Murder)\n",
        "cor_matrix <- cor(arrests, use = \"complete.obs\")\n",
        "states_above_median_assault <- rownames(arrests)[arrests$Assault > median(arrests$Assault)]\n",
        "murder_q1 <- quantile(arrests$Murder, 0.25)\n",
        "states_bottom25_murder <- rownames(arrests)[arrests$Murder <= murder_q1]\n",
        "\n",
        "hist(arrests$Assault, main = \"Histogram of Assault\", xlab = \"Assault\")\n",
        "plot(density(arrests$UrbanPop), main = \"Density of UrbanPop\", xlab = \"UrbanPop\")\n",
        "plot(arrests$Murder, arrests$Assault, xlab = \"Murder\", ylab = \"Assault\", main = \"Murder vs Assault\")\n",
        "barplot(sort(arrests$Murder, decreasing = TRUE)[1:10], main = \"Top 10 Murder rates\", las = 2)\n",
        "\n",
        "\n",
        "\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 1000
        },
        "id": "q7W7J7TedbxX",
        "outputId": "c9bb9636-c294-4c08-d5f8-4dcdecafd1d9"
      },
      "execution_count": 18,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "     Murder          Assault         UrbanPop          Rape      \n",
              " Min.   : 0.800   Min.   : 45.0   Min.   :32.00   Min.   : 7.30  \n",
              " 1st Qu.: 4.075   1st Qu.:109.0   1st Qu.:54.50   1st Qu.:15.07  \n",
              " Median : 7.250   Median :159.0   Median :66.00   Median :20.10  \n",
              " Mean   : 7.788   Mean   :170.8   Mean   :65.54   Mean   :21.23  \n",
              " 3rd Qu.:11.250   3rd Qu.:249.0   3rd Qu.:77.75   3rd Qu.:26.18  \n",
              " Max.   :17.400   Max.   :337.0   Max.   :91.00   Max.   :46.00  "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Histogram of Assault”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAAC/VBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O1tbW2tra3t7e4uLi5\nubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnKysrL\ny8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc3Nzd\n3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u7u7v\n7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7///9P/i37\nAAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dCZhU1Znw8dPdNG2zCgoosrmNk0wU\n3KJRNBqIGyoaM1FcIoorqGh0hhgX1KhE/NTPMWrUaNxiHNeYxDgSFKNxiRInUXFBNFGDuIEo\nKjRN32duLX266r1QvPfyXovb9f89z1Sdqrp9zulO/acWym4XAFhjrtobADoDQgIMEBJggJAA\nA4QEGCAkwAAhAQYICTBASIABQgIMEBJggJAAA4QEGCAkwAAhAQYICTBASIABQgIMEBJggJAA\nA4QEGCAkwAAhAQYICTBASIABQgIMEBJggJAAA4QEGCAkwAAhAQYICTBASIABQgIMEBJggJAA\nA4QEGCAkwAAhAQYIKRV3O9dUtcXv2mad5k0+N52yqt9PJhCShRucc4sKw1HO7VndO97TLufT\nkmtOCy8Pa1uTOQlpdQjJQiSkuVdccVXkqAUN7uUvYTPHO9f7iltbOq5YMTBX1hNrMmd7SF/S\nt5BBhGQhEtJK/Zf7Uu6Fezt3fNkVf3Cu3rmJazJne0hf0reQQYRkQRfSzl/OvTDcwellVxzl\n3DHOrb98DeZsD+lL+hYyiJAsrPI10vLrRvXr0m+7iz8IgjH5ly5ucnjt4ot26NPYf4+bWgtf\nctO23fqOefaN8MYvguBG53Zdfsr6/YOg7Vd79OvS8+v/lTsqvHaX4O4RzUPPagnm7Ldu92+/\nWLp86XzHF5YpeY30RW/nXv2Kc78rXCzZkrhQuuBZzu2Qu+5+5xqC9u+n5FuAQEgWVhVSy27F\nu/Umr5fcC/93o+K13/gw9xWn5cdNV4cn4aU7nNvqsvy997DiUfu2BcGdzn3trrrcpUlvrJ87\n6/dxx+pl80VDCvfyteA85w7LXyrdUvmFsgUJKSZCsrCqkK517l9/9eRDBzn3zeClB8KDfvn4\nG8HC8H6/8bW/ntLFuTHhMX8Orx5xw2079fB32WGDG0dsEfw2fGVzzQs3hkfdlb92w0H7nxQ+\ntjTtPXDyDuGXXOEXL5/v9ce3c+6Qxx9f4W8/0LkfB6841/2zQGyp/ELZgisNyX8LiCAkCze4\nUh0hjXfusvCsZdxJP1kRvOsKLzDOd67XP8Pz28LLzwXBcc6tGz6SfD7U32Xd5m+Hg5+OGZP7\nf/37O/f9wrX/HgT3hmfrzAuWbeHcfn5xMZ98jbSoybnXgmC4c3cEcktlF8oWXGlI/ltABCFZ\nWFVIpzg35NYFxYPa74XhXXp87nJrH+cuCIKvOndE7uI5HSHdUTL1yc7tUbj2z+E9PoxiXHjl\nGeGDmD9CzCdDCve2dXg2LXzKFsgtlV0oW5CQYiIkC7mQBg/NW6c0pOe75cLadMK9udfvxXth\nW5fCw0AQfCNfRXjIxblL93SEVLhrzxi7SVM+zFGFa3OfVRjk3LTwLHwRtWn72nI+GVL4Mugn\n4dmbzjV+KLdUdqFsQUKKiZAsrPJdu0f/rfAgNexJfy9cEp5dlz90dO5Boi28eGXu0kP+LtuQ\nf31zTXhD968MX789pPx8mzp3bXh2VUlIYj4Z0tv1HQ+V18otlV0oW5CQYiIkC6v+iFDbkxfs\n1Tv3LtuS0kekS/O37ZB/J62p8CCTLyjo+MpPwweLQ8MHoYmrC0nOJ0KaXvKccxe5pdIL5Que\nVXzyeB0h6RCShcqftWt9IHz18qC/F44ovhPd0tO5S4Jgs+JrpLPLQ/pjePTzhfkqhyTnEyGF\nt+4wIedg5+r+IbZUeqF8wfAlVf/cp/OOJyQdQrKwipA+v3j8/vmnaXs4d3+wIDzo8fDCBeEz\nqNzbcteH9+xXg+Bw53p/ED4CDS4PaUbh7YWXwmdmu1YOScxXHtJL4TRP5Udtg3Mvlsq2VHah\nfMHcW4C/DYKXu5Xtqv1bQAQhWVjVI1L4cHDQg8/98fxG1/Re0NoYPrm663+CRYOc2+zqe/8j\nfE53THjMzPBrt7r5xu27l4f0z/AOvd8Lv9loC+d6PfVepZDEfOUh/ci5wcXPfZ8WriO2VHqh\nfMF5dWGex5/Rd6eyXbV/C4ggJAurCumFQcVXJ/U3BvlPk+b/zdR/EuE7X+S+4sj8uNsl5SHl\n3oYODXwz99HtqZVCkvOVhtQ2zLnTiuMnwyNeLN9S2YWyBYMT8pc2fyJ8mGvr2FX7twCJkCys\n8jXSgh9vN6Cx278e99fchXcOWHedjS8KB4sv3L5344YH/qbwFSsu3aKp/3f/9mDhS3xILZd8\ntXmjY/4ZzNiiy6A7K4Yk5isNKezA/ak4bhvi3JliS6UXyhYMWqdt3nWj4957J5zgs45d+W8B\nAiGtLW4JHw2qvQckRkjVNmfaxENy/4XD/s4dUO29IDFCqra54cv6A2Y9cWr4HOrhau8FiRFS\n1Z3X/u+l51R7J0iOkKpv5ncHNTYNPXhWtfeBNUBIgAFCAgwQEmCAkAADhAQYICTAACEBBggJ\nMEBIgAFCAgwQEmCAkAADhAQYICTAACEBBggJMEBIgAFCAgwQEmCAkAADhAQYICTAACEBBggJ\nMEBIgAFCAgwQEmCAkAADhAQYICTAACEBBggJMEBIgAFCAgwQEmCAkAADhAQYICTAACEBBggJ\nMEBIgAFCAgwQEmCAkAADhAQYICTAACEBBkxCWvimxSxAdiUP6a/7DB15dWt+OIXHNdS4xAk8\n0eS6NbpvLsyNCQm1LnECYxrvb1t6eeP2SwJCAhInMPjw3OnMrvu0EhKQOIHGc/Nnt7pTCAlI\nnMCg/QvnZ7rphISalziBU+quasmdtx3pTj2ZkFDjEifw4RA3Oj9oO8U5QkKNS57ABxNPLY7u\n3ZSQUOPSSWDFozO8h29PZYnqeX1Gel6o9jeHhExC+nCuuOKNfn28nq7FYo21x65NvdLSvFG1\nvzkkZBJSxXft/uSWWayx9tj55BfScumAan9zSIiQYiMkRBFSbISEqMQhbVtiA0IipBqXOKT6\n+iavgZAIqcYlDmlKz4636nhqR0i1LnFILVtv59/WJiRCqnXJ32yY03xG+5CQCKnWrcG7dos/\nah/NmlbhMEIipBqQ/qfkCImQagAhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBF\nSLEREqIIKTZCQhQhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBFSLEREqIIKTZC\nQhQhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBFSLEREqIIKTZCQhQhxUZIiCKk\n2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBFSLEREqIIKTZCQhQhxUZIiCKk2AgJUYQUGyEh\nipBiIyREEVJshIQoQoqNkBBFSLEREqIIKTZCQhQhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJs\nhIQoQoqNkBBFSLEREqIIKTZCQhQhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBF\nSLEREqIIKTZCQhQhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBFSLEREqIIKTZC\nQhQhxUZIiCKk2AgJUYQUGyEhipBiIyREEVJshIQoQoqNkBBFSLEREqIIKTZCQhQhxUZIiCKk\n2AgJUWsSUtu8GffdN/Ot1RxFSIRUA5KHtPD0/i5vyAWfVzqOkAipBiQOaf7GbvPxU6dPP3vc\nQDd8YYUDCYmQakDikCY03lUctV5dN7nCgYRESDUgcUgbHN0xPnhwhQMJiZBqQOKQGi/qGJ/X\ntcKBhERINSBxSEO/1zEeO6zCgYRESDUgcUiT6y5dWhgtOddNqXAgIRFSDUgc0qJtXM9R40+a\ndORu3dwun1Y4kJAIqQYk/3ekZZePaMj9M1Ljjte3VjqOkAipBqzRR4S+eG327Lkry2TBPqO9\n7d3SNVlj7UNI0szR6RnzQbW/Ox2Tz9p9OFdcsWTqFO9wHpE6e0gX9j86LUe456r93emYhDSl\n0iw8tev8IW2d2k/kaUJqR0h6hCQRkkdIeoQkdf6Qti2xASHZICSp84dUX9/kNRCSDUKSOn9I\nU3p2vFXHUzsjhCR1/pBatt6upX1MSEYISer8IQVzms9oHxKSEUKSaiCkYPFH7aNZ0yocRkh6\nhCTVQkhKhKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIh\neYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdI\nEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSk\nR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5\nhKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkR0gSIXmEpEdIEiF5hKRHSBIheYSkN7G+\nT2r6/jG1nwghEVICKYZ0eK8bUtPrztR+IoRESAmkGdJ6qU39wnqElCZCio2QJEIipAQISSIk\nQkqAkCRCIqQECEkiJEJKgJAkQiKkBAhJIiRCSoCQJEIipAQISSIkQkqAkCRCIqQECEkiJEJK\ngJAkQiKkBAhJIiRCSoCQJEIipAQISSIkQkqAkCRCIqQECEkiJEJKgJAkQiKkBAhJIiRCSoCQ\nJEIipAQISSIkQkqAkCRCIqQECEkiJEJKgJAkQiKkBAhJIiRCSoCQJEIipAQISSIkQkqAkCRC\nIqQECEkiJEJKgJAkQiKkBAhJIiRCSoCQJEIipAQISSIkQkqAkCRCIqQECEkiJEJKgJAkQiKk\nBAhJIiRCSoCQJEIipAQISSIkQkqAkCRCIqQECEkiJIOQWl58bmnFAwhJj5CkGghp5m7D9n46\neGigc72urnQcIekRktT5Q3qyi+tV3/3JXoO//70+7vcVDiQkPUKSOn9I+23w1+D93YcM/zwI\nFg7bq8KBhKRHSFLnD2m9H4cnz7qbc+ML+8pbX3zOu4mQ1AhJ6vwhdbk1PJnvfpcb39hF3Ph6\nnStR+c2IzCEkiZDWIKQBU8OTWe7K3PhHA+Stnyz0HuIRSY2QpM4f0iF9H1n2ty2/MuSdIJjT\n57sVDuQ1kh4hSZ0/pJd7hk/a+s4Z2m33b3RpeKbCgYSkR0hS5w8peGHcDuNfCV74ep3b5NeV\njiMkPUKSaiCkdp++X/l2QtIjJKmGQlodQtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELS\nIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8\nQtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJ\nkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIj\nJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC\n0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkLyqhNRy83Wp2TSbIfU6\nNrWfyFhC6qwhPe8GDkpLfTZDqu+b2k9kHUIqC2nHn32cwgpVCWm2eyq1/217ZDSkS1ObekdC\nKgupi2se9/AK6xUISY+QpEyG9OF1oxrc4LPm2q5ASHqEJGUypND71+5e70b+/BPDFQhJj5Ck\nrIYUmn/FcNfthFfNViAkPUKSshvS53cf1OyGNDae12a0AiHpEZKU1ZCeOKaXaz7s0eCtg9xU\noxUISY+QpEyG9NaFmzu39U8X5cZto/sbrUBIeoQkZTKketf7BL/tn9YZrUBIeoQkZTKkXW7+\nvOPC3PuMViAkPUKSMhlSELz4Qe7kL6YrEJIeIUmZDKnlaPdoeHaVG99quAIh6RGSlMmQLnNj\n3gjPXjnY/X/DFQhJj5CkTIa05b7FwT6bGa5ASHqEJGUypObLioPpjYYrEJIeIUmZDGnAycXB\nxAGGKxCSHiFJmQzp6G6/y521XN/lCMMVCEmPkKRMhjR/Qzfk2/uO7Os2/IfhCoSkR0hSJkMK\nFpywnnOu37HvWK5ASHqEJGUzpCBo++frS4xXICQ9QpKyGlIKCEmPkKRMhtR2174j/q3AcAVC\n0iMkKZMhXepct94FhisQkh4hSZkMadCe81JYgZD0CEnKZEiNT6exAiHpEZKUyZAGPZXGCoSk\nR0hSJkP6j4lprEBIeoQkZTKkT/c89KE5c/MMVyAkPUKSMhmS62C4AiHpEZKUyZDGHTmhneEK\nhKRHSFImQ0oHIekRkpTVkD55cZH1CoSkR0hSNkOata1zvw+C/f5guQIh6RGSlMmQnunac88w\npPc36Gq5eULSIyQpkyGNGfL2u7lHpPeGjDVcgZD0CEnKZEjrTQvyIQUX9zFcgZD0CEnKZEhd\nbi+G9At+i1AFhCQRkvis3VnFkI4aargCIekRkpTJkI7rMzsX0sIfOcsP3RGSHiFJmQzp3cFd\ntnEjRjS5IQsMVyAkPUKSMhlS8N6Jud8itP6J71muQEh6hCRlM6QgaFsw1/LRKIeQ9AhJympI\nsbX+7U9vVT6CkPQIScpkSKO8XRRf+adJ4cltA8LngsMfq3gcIakRkpTJkPx/jdRz4Oq/8NGu\nPdqCu12Pf5/47fqmSt8sIekRkpTJkJbnffbiGbsuXv0X7tZ/bhBsPHR+OHy6eb8KBxKSHiFJ\nmQzJ++EJq//CXmcEwcfuyvz42HXFjQsnHueNJSQ1QpKyHdJTiqd23c8JgqV19+bH568jbiSk\nZAhJynZID3db/RfuvPlnQbDTGbnh0uHDKxzIUzs9QpIyGdKigvcfHaH43d+/ddv8z/LZG97y\nWcvT33LXVTiQkPQIScpkSB2/ROg2xVfe0N01f3Woa2hwdT9oq3AcIekRkpTJkMYUHHCi7j81\nX3DpnkN7Nq237SmzKx5GSHqEJGUypHQQkh4hSYTkEZIeIUmZDGn413coZbQCIekRkpTJkAY0\nO+fqwv9rbsgxWoGQ9AhJymRIC0dO+ssXweLHvrOH4iNCaoSkR0hSJkM6anxxsNcxhisQkh4h\nSZkMqd+NxcH/62+4AiHpEZKUyZCaLioO/rPJcAVC0iMkKZMhbT2w8Edkn1i/0mfn4iIkPUKS\nMhnSAw1u49H7jd7E1d1juAIh6RGSlMmQgll7ruOc6/qtGZYrEJIeIUnZDCkIVrzz2tuttisQ\nkh4hSVkNiT80tnqEJBESf2gsAUKSCIk/NJYAIUmExB8aS4CQJELiD40lQEgSIfGHxhIgJImQ\n+ENjCRCSREj8obEECEkiJP7QWAKEJBESf2gsAUKSCIk/NJYAIUmEJD79/WIaKxCSHiFJmQxp\nnZ+ksQIh6RGSlMmQRu+9IoUVCEmPkKRMhrRg3F53PDc3z3AFQtIjJCmTIXX8En3L379KSHqE\nJGUypIOPOHpCkeEKhKRHSFImQ0oHIekRkpS9kK56PH/2/DvWKxCSHiFJ2QvJTS6cTbJegZD0\nCEkiJI+Q9AhJIiSPkPQISSIkj5D0CEkiJI+Q9AhJIiSPkPQISSIkj5D0CEnKYEg7TM1x2+fP\nDFcgJD1CkjIYUhnDFQhJj5Ck7IV0WxnDFQhJj5Ck7IWUGkLSIySJkDxC0iMkiZA8QtIjJImQ\nPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMk\niZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELS\nIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8\nQtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJ\nkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIjJImQPELSIySJkDxC0iMkiZA8QtIj\nJImQPELSIySJkDxC0iMkqYZCWjzl5Yq3E5IeIUk1FNLb7rcVbyckPUKSOn9IE9qNc3tMmFDh\nQELSIySp84fkylQ4kJD0CEnq/CGd1jDioUU5L7k7Fy2St36y0HuIkNQISer8IQXPjqg78eNg\n5a+RXq8rfbhaugb7S4iQIggpVWvwZsPynzQPvGcVbza8+Jx3E49IaoQk1UJI4QPPKLffW7xr\nZ4eQpNoIKQh+0bfHVEIyQ0hSrYQUvHeIIyQzhCTVTEhB8ODpcyreTkh6hCTVUEirQ0h6hCQR\nkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqE\nJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdI\neoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGS\nR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQk\nEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6hCQRkkdIeoQkEZJHSHqEJBGSR0h6\n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\n12FjnxJ7tdl2x9zm25537CZd1x/7TCrb7pjbettVC2nZNu6gi45u3Nj0v5K9wo2bkvOI7fxz\ntulZvLOXzGq0QMfc1pv/aJgbc85hXdb5WwrbLpnbetuvrNf18KmHNTY+mcK2S+a23nbVQrrc\nXRKe/rc73XLSqe7ZFOZf3Lzd3KZt5aw2C5TMbb35Se6q8PRet08K2y6Z23rb3657LDy9z30v\nhW2XzG297aqFNKLn0tzZZv3bDCed7OamMP9Hp7cExTt7yaw2C5TMbb35U0e1hKdtzUNT2HbJ\n3NbbPvvM3Glr4/AUtl0yt/W2qxXSFw2j8ufjneVvtzjSfdD69gdpzF+4s5fMarhAMaR0Nr+0\nceeUtl2YO6Vtv+MOSG3bubnNt12tkF5zhV8qNtXNMJz1AHdWH+f+5Zf28xfu7CWzGi5QDCmd\nzV8ZPglLZ9uFuVPZ9mePbtXz2ZS2XZjbfNvVCmm2m5Q/v9RZ/rq13dwm0249s5f7mfn8hTt7\nyayGCxRDSmXzs7qOXJ7Stgtzp7Ht3s4dPi+ln3ZxbvNtVy+kk/Ln0939hrPOvGdJePpSU99l\n1vO3h+RnNVygGFIam7+jaZuP0tp2Ye40tv3D43aqHzkvnW0X5zbfdrVCmuuOzJ+f7f5gP/mB\n7s/W8xfu7CWzGi5QDKnIcPNt57q9PgnS2Xb73O2Mf+aPdt9qRTo/7cLc7WOzbVcrpGVddsuf\nj3P/sJ/8ePeI9fyFO3vJrIYLlIdkt/m2o93JrblBCtv2c7ez/pkf6uak89MuzN0+NNt21d7+\n3qFb7jf/rhho+duuP73mjvz5SDfPev7inb1kVrsFCnPbb36yu7g4st+2n9t62+9sdUT+/Dvu\nWfNtl8xt/tOuWkjXu/PC02vd+YZzrtiox8vh2a/d1ubzF0MqmdVugcLc5pu/101uH5pvu2Nu\n820P6vp0ePpqjx5f2G+7Y27zbVctpNZd3NjzD6nb0vQ30j9Q133COQfW9ZptOv+sKVOmNGwQ\nnnxYOqvNAiVzW29+U3dy/kMwUxbab7tkbutt39/QeMhZ47u7nwb22y6Z23rb1fvQ6qdnDG3c\naNJHtpM+ufe6XQZ+f67t/NOKn2/M/Vt4yawmC5TObbz59pndm/bbLp3b+mf+9AH9GtYd/Rsx\nn83/nCVzW/+013BnAAJCAkwQEmCAkAADhAQYICTAACEBBggJMEBIgAFCAgwQEmCAkAADhAQY\nICTAACEBBggJMEBIgAFCAgwQEmCAkAADhAQYICTAACEBBggJMEBIgAFCAgwQEmCAkAADhAQY\nICTAACEBBggJMEBIgAFC6oQOdm9Xews1h5DWdqe73p/H/JJ8SNPmprIdrBwhreWWrV/vbon5\nNbmQ5rvfp7IfrBwhreXucBPrRsb8mlxIDxDSl4qQ1nK7udd2cXNyo6XTt+rVY8vpK0pHwTMH\nrNc49PA3w9EYtyg8Xe5G5UMak/uT449Xc+M1hpDWbq+6nYIb3A9yw6Pcodf+7EA3qXT03DoD\nL7j+hz37fyhDeuoId+79a/YH7xEHIa3dTnc3BJ90W39ZOOz2jdwVpx3UWjK6ZptHw9FV7ioZ\nUjCNp3ZfKkJaqy1dv3lxEBzh7gzHvQe+V7y2Y5TT8sVMdzohVRkhrdV+6Q4PTx9xo8PTK12v\nI256JygbBbfuum7u1dBkQqoyQlqrfdP9fO7cua8NqJsXXph5QHdXt8/fS0dnuu1+MeupnxNS\n1RHS2uwV1+5H+ctLZxxZt9myjtEXzYM/DS881BHSZ4RUHYS0NvuBO+bunNsaNlxevOpE90zH\n6E13YG50Zi6kA9z74fBFQqoOQlqLLV2v6f3C6CD366cG5j/gMMn9pWP0ed3W4eD5jdzxua4e\nC8f/2R7SdHdftbZdkwhpLfZLd1RxNMuNWf61rsdefc3R9SPbOkbBvu74X53T58Eug+5Y8pTb\n9pGnz9ylZzGke9zXL/tzVXdfWwhpLbar+9/24ZYNb3906qbdeg+/OHxR1DF6/9B+vb/1eHB+\njw3eDW7+avOA4z4eOLIQUstBzX3urubmawwhAQYICTBASIABQgIMEBJggJAAA4QEGCAkwAAh\nAQYICTBASIABQgIMEBJggJAAA4QEGCAkwAAhAQYICTBASIABQgIMEBJggJAAA4QEGCAkwAAh\nAQYICTBASIABQgIMEBJggJAAA4QEGPg/veKMfCKlyAUAAAAASUVORK5CYII="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Density of UrbanPop”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dB5jU1N4G8LM7O9sLvS9NKQJK\nERVFiixFBQRERUA+mkqRooIXAQUsyJV6RVFBBXtBqg2lqggoHVFAiiAgiPS6ffJlZtuwJVNy\nkv85yft7HnezTCZ5WedlZjInJ0wBAN0YdQAAK0CRADhAkQA4QJEAOECRADhAkQA4QJEAOECR\nADhAkQA4QJEAOECRADhAkQA4QJEAOECRADhAkQA4QJEAOECRADhAkQA4QJEAOECRADhAkQA4\nQJEAOECRADhAkQA4QJEAOECRADhAkQA4QJEAOECRADhAkQA4QJEAOECRADhAkQA4QJEAOECR\nADhAkQA4QJEAOECRADhAkQA4QJGIfc5YRKD3md8oMqr6FUM2DUFCkbh4i7mFFKvd67O0wO4Z\nxKP9Z8/OLmb/NJyxstmLAxirEtyms/IzFln5/u8CTAMeKBIXOQ9EVeXVAd1z34wZr7q//+Ng\nu/28i9qXhBnv5xSWa5Hc+rn8vBN4QZG4cD8Q7+7UsWmM+j10cTBbmMn8LtJdjA3I+4lbkdq1\nb3/XDaHqwjQ/7wReUCQu3A/Es+r3lFejGIs+GsQWmvpfpCTGRuT9xK1I7vzKr6UZq+TnncAL\nisRF7gNR+TaEsUHuhT0Dro2Ia/xKurr4DmPNlB9bF4u5fYVnnfTZSaXDSjd+6aSS82hvn/Wq\nanhfxup6VnlP/eOzuZs/P/GW4s4ybedmKJ62aL9HUvfWPH1YqTLuTUcpi5rFx7Vc47nZ9Unb\n0mFxN8/MKBgpL/9/1aUj+XapvM1YHeWzpvFxrdcZ8uuzABSJi7wHonIPY2XUdxkLI7Me762S\nFeVTxup9F+7+ybFSXSOtZXYXqu/PX6R16pc/3Fu5n7H7c7e+vWL2HW495UeRPmbshmnqrtyb\njn3Ds27oV+6be2bfs4OrQKS8/J+pS7/n26XyIWMVpnh+DMOxiMKhSFx4FelddXGX8qf6Eu+p\nPza1YGy0pyzlqzYY3Va95WZ1DfXBXfuT9d92ZaxFTpF+X6re9tHaP5U6jE1SV0lLYOyrnI2f\nUR/U1d5YMiqMsfaKsn9tY8YeXLs2M/vWAkVSt1g10dmglmfTcQ9/MlndVmKqonypFur1ne+o\nW5lfIFJe/ucZCzmdb5fudkVE9P7kpVh1BwEelbQLFIkLryJtUBdXK0MYa6n+cDKWxSW7H7Ws\nWbLnKSFUfRz2yXo/n9Z9yH8zc97IHGdZ75HUp5Kb1G+r1Ke19JyNP8dY/N/q9w/UdTYrPt8j\nufdWw/3qzL0wUP2+QP3+jaK81r79cMXzjPl/Sv5Iufl3lGTsxgK7dK/dT/E8jzE8JRUKReLC\nq0g71cWlyjWMjU1WNWdspedx6D4ovlL9fkhRhjFW+f1/su+Zr0gn1ZdbhxXlCcaeyN14fcb6\nuL9nFGfsecWvIn2cvWm2032/eMbG5a4/lLG2Sv5IWUcdO93TSH0KYosL7NK99nb1x/Q4xibw\n/t1ZA4rEhVeRflQXf3SF5n0u84rncXhBvWlf1iN7W7T7j6/pv9D9Rj5fkZQH3HdQajC2LWfb\nrrCcI9K3MtZd8atInpqqC07PC8BGWbVY0al6hCdRkpI/ktfnSCETC+4yd0sNGetrzG9QdigS\nF15Fmun+N/5S3gOTjc89Dn0k+yliTd2sW6quL1ik5e53TnsZuyF32+5tzfYstWasg5K/SE8y\nVjJ7UX3NWMOzRYfnUa8uFPP8+e2MdVOU19XtxFxXv1ROkbwj5RQpPLHnL4XsMt+WoCAUiQuv\nIt3GWHXF5WDsf7m35i+S4lr//J0J6g+lLxUokqsqc/yrvlOamntv99PDFM/SLYz1VPIX6UX1\nXc6lrMVmjDX1+vjIveAZpdDQ/Q7novo82OOKogwuqkh5R9sL7DJ3kw2z3itBASgSF3kPxI+Z\n5w1JTcaG595aoEhuGUuLu48B5C+S+7DZW3cwx/G8jTfI6o+Spr5DeVnJX6TF6j0/8Cz94fC8\ns/Iukmeb7nc2z3tecm7LurfPIuXfpXtL+9xbis16lwYFoEhc5DwQM94IV59nznje0le4rP7c\no+/TR/M9aq+81Ocez0uvtu739dm3/aPetNazqaMO1tTJ7vLauFqtGPdRuDnqGxj3h0xXF+li\nMcZKfa0u7K6j3r41X5Hchyw+8xxYWKF+3agov6vv3pr7LFK+Xbq39LT648LsQxRQAIrERfZR\nryT1DQhzrlL/4ECU+jLr6+/uZaxuRv5HrfrPfddvNv/4nJNFnMi5LcPJWLP5nkPLng9nP/Xa\n+NlKjF07a+FTEYw97P756iIpr7nXT2x+rfv4xlDFq0hqgRzhTyydFs9YrQzlb/X2jju/qFiL\nsfgNJ3wUKd8u1bXDnOPXvF7SsyUoBIrEhddRr0pZTyyfZx0gYxV3F/jnf2el7FVD38m77S73\nH7g//PS8VktI9t567jCDez1/nK9IygRHzgG3Ye5nutwifchYmYmeGyLdI3uGehYrHKzgPgDi\no0j5dqmuXfzpvC1BQSgSF9lFcpa/642cCuzqVy0iut5Y9WVegfdI/7zQuKwzuvajO7xuO9q5\nWGS1ie6l9NLZzzx5zr94U4KzfJcvsn7KXyTl1yH14x0JDYdt9/yUW6S3GautzGsQWfwezw1p\nL9eJqvjw38qKWmGVPvVVpKt3qa4do8x2b2mH7l+VRaFIwvlHfZv1E3WIq+FcW59QJOE84hmk\nIxQUyScUSSwfTO2ivspaRh0jHxTJJxRJLC3cb7UepU6RH4rkE4oklvsiwmpNy/S9nrlQJJ9Q\nJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQA\nDlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5Q\nJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOTCjS9s0AUtke+KPc+CJtYgCS2RTww9z4Iq1j\nqYbvA4CjVLYu4PugSAD5oEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgA\nHKBIABygSAAcoEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgAHKBIUED6/h9WrNjwL3UMqaBI\ncLWj09vEMhYbx1i5e+eepU4jDRQJvG3p6qg2bPGf6Ypyedu7fUtF9d5KnUgSKBLkOfxAaPs1\nrryf0xa3Cem8hy6PRFAkyDU7tsnP+f9sY5LzP5cpwkgGRYJs57tGzcws5M8XJl7zk+lhpIMi\nQZZ9tWvvLPyWCw+HvVBYw8ALigQem0rddb7IGz9PuPuMiVlkhCKB24/xfTM0bt57fc29pmWR\nEooEqrWxj7k0V7jQviTeKGlBkUBRtiT46JGiZAyK+sKULJJCkUD5s+z/+eqR6vmwD42PIi0U\nCc5e1ybNn/VmOt4xOoq8UCTby2hXp+jjdVeZ7Xjb2CgSQ5Fs7z8lD/i76luOeQYGkRqKZHeL\nHN/6v/KbYZ8Zl0RqKJLNHSz2fCCrT3N+Y1QSuaFI9pbeJCmw0T/PRq81KIrcUCR7G1vqWID3\neKz4r4YkkRyKZGvrHEsDvUtmt4p/GRFFciiSnV26tn/gd0q5oy5GsBaAItnZ8Cp+foJ0lXP1\nWqRwjyI7FMnG1gVy5NvL4Yrd/RhSZC8okn2l1OkT5D23x43hmsQCUCT7Gl/2dLB3/TZsLs8k\nFoAi2dYfER8Hf+c3nav4JbECFMm2ktrquffIYrt4BbEEFMmuPo3Yp+fumZ2rY05jLyiSTV2s\n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\nYYwI5p6f8lhsuQzSGLuqJU778p26CStIfxs5RcpNQPo78RC6SK5x7M4L6vd9rLfn52fYSvND\nPBj7V3aRSGOUdHgmhryf/Uoao0n0UfXr5YoV0yhjZBXJKwHp78RD5CK5+rGhngump4a19PxB\nd/aX6SG+Yc8eOXLkd9b9yHnKGMqNDs/hssFsHWWMiyF3eL7/H/uNMkZWkbwSkP6v8RC5SMPZ\nS9lLt0S7/znOrJBofogRLMcoyhjKEPaz+1tbdpgyxr/sVs/3B9hmyhjZh7+9ElD+r/EQuEgL\n2fCcxTlsgvr1DUZwIYZdX7p9ytp+uZsyhrI5pFWKomwKvYH0t6FUc/6hfj1bIj6FMkZ2kbwS\nUP5OPAQu0jVs6CiPM0pGM9bpuQdDriebP97zHok2xuOswXOPRIWvoY2xKLTk2LkTq7FZZDG+\nVx8RjnLql1PeCcgfIQIXKfc11UH1tfnIKs6Kj50my5JVJNIYrjfrRybcvZE6xvrOpcOKt/6a\nLsaknIfFvqsSUD9CBC4SgDxQJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5Q\nJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQA\nDlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkAA5QJAAOUCQADlAkKXRjR6gjgCYUSTRT2BvZ\nSzFlc//QZ5E+8FwNMrRMl7XGJQMNKJJogi1S01GjRg1rFxrynnHRoGgokmiCLdJ4z/cfw4qn\nGJMLNKFIorm6SN3YidaRS9VvB56sEF5rlvuPf+lc0lnloYPqUnd28T9VwitNd+UVSWnHflGU\nQ30qOEt2VBeUzuxY/zLhtV4n+IvYC4okmquL1Iv1uOulnWqR2jd7aVx19paibI6s8Pycp+PK\nnFKU3qzdwA3r2rK5XkXqwdYoh8vEPvXuxIoRa91FvHnUurVt3HcEI6FIorm6SP1Y20zF3Ydm\n6rdD4dUU5fVGa9Q/eJW9qij9WXd18QDrkFektOohx9WCLVIXdzmauO/oXuVcRFWCv4mtoEii\nubpI/dlH7sVuWd/uYIc9t6Qlr2Ij3Dd+6/4pukFOkZJ/vVctjiuhrMv957ezU+odl7oXW7Nj\n5v4tbAdFEk3+Im12L3ZjO93f+jP11dr7zYu5D3UPd/+4y/2nCXVzDn+r7rmgHGOtlKy116t3\n3O1e7M22mv83sRUUSTRTWc6Rgajy7jLscy92Y3+5vw1lK5TRrPG87ze8nVUkz41ZRWoxfvz4\n517brv68j3X03H+Iunb2HQez1ab/RewFRRLNHPZC1sI5Vs+rSHvc3/qzdclRiRfVpW8LFGl8\n7haOZz8j9WU/q3f0PGn1ZDvM+xvYEookmk3sFs87HOU91t+rSIvd31qy4wdZF/fSaI0iKSXK\ne7ZwS8hZ9Y4L3Ys3s3/N+xvYEookGtfNbHyG+n1daccOryK5X60dCa+jXAlpqC5tq8gGFF2k\nhz212xaS5L5je3Xxj5BaZv817AZFEs6ByqzW/z3anIW9o3gVqW3n2TOuY58oSgc24JNni38T\nVunjS0UV6e9ysWPee65M3A73HVt3ePP1qlkH/cA4KJJ4zo2vHx1etY/nXU12VzqxM4+XD79u\nnrr4b4/SCa3WKs/FljteVJGUw33Lh5V50P3uqBvb93iF8DrvmvxXsB8Uydpw/oVJUCRrQ5FM\ngiJZG4pkEhTJ2lAkk6BIABygSAAcoEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgAHKBIAByg\nSAAcoEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgAHKBIABygSAAcoEgA\nHKBIABygSAAcoEgAHPw/weLg9MLljd4AAAAASUVORK5CYII="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Murder vs Assault”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3de4BM9f/H8c/s7uz9wmKxi123\nqBQthViXFCG3+KV1vyS5brmEEuIbRZFKiQpJqVwSoVxKitySiLLuJPclu/Y+53fmnLM37Z6d\n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"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Top 10 Murder rates”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAAC4lBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tMTExN\nTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1eXl5f\nX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29zc3N0\ndHR1dXV2dnZ3d3d4eHh5eXl7e3t8fHx9fX1+fn5/f3+AgICBgYGCgoKDg4OEhISFhYWGhoaH\nh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKUlJSVlZWWlpaXl5eYmJiZmZma\nmpqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWmpqanp6eoqKipqamqqqqrq6us\nrKytra2urq6vr6+wsLCxsbGysrKzs7O1tbW2tra3t7e4uLi5ubm6urq7u7u8vLy9vb2+vr6/\nv7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fJycnKysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHT\n09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl\n5eXm5ubn5+fo6Ojp6enr6+vs7Ozt7e3u7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4\n+Pj5+fn6+vr7+/v8/Pz9/f3+/v7///+lR2UAAAAACXBIWXMAABJ0AAASdAHeZh94AAAdcElE\nQVR4nO3de6CkZX3Y8Wdhl0VgEYigshgUVDQ2FRRLjJdQrcVLRNwkFU0FRdHWG9r1kiISJUqM\njdZrrNYUr0GFaLSYnyZRUpQm3hNEa71EUdRyk2XZ+b/vmTl7zuz57Rh+s8+ycPh8/ph33pnn\nfc6c2fe77zuXhTYCdlnb0w8AVgMhQQdCgg6EBB0ICToQEnQgJOhASNCBkKADIUEHQoIOhAQd\nCAk6EBJ0ICToQEjQgZCgAyFBB0KCDoQEHQgJOhASdCAk6EBI0IGQoAMhQQdCgg6EBB0ICToQ\nEnQgJOhASNCBkKADIUEHQoIOhAQdCAk6EBJ0ICToQEirz0da23tPP4Y7HCH186g27S23cKsv\nH9/axsXrV5xx5D6H/NuPTd37joWp/mRy/d0L19/xz88opD1ASP3ME9LW1+zTlkK6dMNk0/OW\n7x+H9ITJ9Sfv/pB+sHf72pyb3sEJqZ//fPLg2GFnf9zClU/ckk2+NRyO9toe0s+Pbu2I0x46\n3HL50oBxSPteO777gN0f0hubkOYjpM4W9vyf3OLRf9raGX+4PaT3t3bXq0ejU1r799PTHdHa\nhQtXPz6M290hPUxIcxJSZ1Mh/ezVJxy87rDH/LetCyt/0tqvjD7wsAM3PPpzU6P/9OhY2GIS\n0qmtvXA0DubO26ame/Le7ekLV5/b9n7iOKSXt3bCwg2LwbyztUfe9MK7HDZcfdeD9zv4cZ//\n6PaQvv6ce6/fcPwf37TjoLHl9W3ve8yhazf8qzcOj/LxkzPLF+246eimtz3q0LWHHv+aq3bL\nE7ZKCKmz5ZD+fuPiq6WH/mhY+x+tHX7+eHXtJ5dH/5/rR8shPWDytsL3hjHfnJrud3+tHbLQ\n4hHtob+1s5De29q/fP346lnj+de/YjGkC/ed/Px/fcP0oInl9actPsonbJsKaXrTLScujjjq\nG7v3qbtdE1JnSyFdPXR0r7d8dPPa1h4/rH5g2MPXn/a+1wwvdI7csnKLSUj7t3bxsNi6prVP\nTd35O2e3FqPR5a2d/aSdhfSh1u55j3XHHjP6Xwt7/ocvPmnt5PZv3qm1l/zD53+jtZdNDVq0\ntP7nw0uyN3/pncM2Hxx95aJhhgv+5ps7bvqW1u73vks/sam139idT9ztnJA6WwrpnNYO/N5o\n/DKofWG857ZnjsYvhNonV24xDmnbENAlC1eGvfgjU3duumx8kBhyuuzkGSG1+3xnuPLs1g69\ndjgTu9/k9ue3duKwuOqAtuGG5UGLltbf9PjHL5zKDSeNw/njP7XJa6QdNj29tdcPK1tOff4f\n3LxbnrJVQUidLYX0wNZOX1huPbi1V0323L8fVm/a0NorV24xDun6Nj7yjEYHtva+qTs3bdvY\n7jkaHdc2bpsZ0nsX1u8/SXV07uT2o1t7+Q2DRy4c4JYGLVq5/oLWHrMc0g6bvrC1X37PD3o+\nR6uRkDrbHtK2tZO/yEejh7Z26njPXTf+C/241p6xcot0RLpo6s5No//Y2he/09rzRjND+sHi\nduNPoD48vn3bXsufaf3x8qBFy+uXnHzU+vGgRy2FtOOmf7ffwvLoMy7cuhuerlVDSJ1tD+na\nYfm28S2PHn+iOuy5B41XH97av1u5xeQ10obJKd1NQ1Cfnrpz0+h/tvaHb16obFZIey8kum28\n2w8+Mb792qkPh89eGrTd0vowb9v//g+8y3RIO246+vQDJlfveenueMJWCSF1Nn1EOn98ywmt\nPW28564frx63eAI2vcUkpAe19tZhMRx72ven7tw02nJQe9ymdtCW5ZCOXbjvbUshTWbet7XX\nLCw/ODki7d3af1n6IUuDVqxfMxxunnr9aOGgN3VE2mHTYf3SV5105zZ5BcbOCamzpddIx477\nGV6kDwea107Opa4YVm86YPySacctJiE9q7XnDouLWzt8+s5No9FT24ZDFmabhHRea4ctfND0\nnBUh3bdNPnB62eT2+04+EZqYFdJfDw/r70bjrzcth7TjphNbLxpe6318V56Z1U1InS2F9Krh\nlGnhbbG3t7bmHyYhvXRYvXD7WwrTW0xC+ovW7vKj0baTWnvB9J2bxseY1j60PaSF9wH/fDT6\n2n4rQjptOHu8ejjIHDG5/QVDkNcNBTz1GS/97syQLhnmumw0+srwquiRo9EPhrW/WbHp9a85\n/Ynjk8DHTL2ZyEpC6mwppJ8M+/O9/+uFLxleyT9rNN5z1647+9Nv/qXWjll+1f65884778mt\nHTgsLhzdPJz1bfzd4QRv329OTzeEdM0wyb7XbA/pyuFF1P7PefEhv74ipM8MP/rB7//vDxmO\neXsNq1feqbWHfeyTw/QP2DozpO8NBf3mly7eeMzwIP72h1vXtfaID35yx02HQ+umj3/hr89Z\n19b/cPc+d7dnQupsJ99sePINo/Gee/BLx6v7Tn1H6NzlV/Unj0Zf/qXxtTXv3mG6IaTR4yaf\n6k5CGj13POw+nx2Gbps+a3vG+Pb93zRcLBxDPjR5N65t/NrsU7uFg8/g8G8dPn5j4bELK4/f\ncdMvHbH4CPd65+560lYBIXU2/V2733/Indfd/ZSLxyvDnrv/6G3H7nvwE784NXrHkEbfOfOX\n1x36pL/dcbpNk8U7RkshbT3vPvtsPPOH3x22um66kZtff8w+h/3Wl78y3P7/Fta/+sx7rd/v\nX7z86tEvCGnLa3/lThuf9b3RJcesPeL9o+8+6aB97/XqHTcd/eDc4++6br/7nTn9wFlBSLeS\nlXsyq4uQbiVCWt2EdCsR0uompFuJkFY3Id1KhLS6CQk6EBJ0ICToQEjQgZCgAyFBB0KCDoQE\nHQgJOhASdCAk6EBI0IGQoAMhQQdCgg6EBB0ICToQEnQgJOhASNCBkKADIUEHQoIOhAQdCAk6\nEBJ0ICToQEjQgZCgAyFBB0KCDoQEHQgJOhASdLAnQ7r6C3P5v3vwIcPO7cmQzmxzuf8efMiw\nc3sypNNPijm8+Og9+JBh54QEHQgJOhASdCAk6EBI0IGQoAMhQQdCgg6EBB0ICToQEnQgJOhA\nSNCBkKADIUEHQoIOhAQdCAk6EBJ0ICToQEjQgZCgAyFBB0KCDoQEHQgJOhASdCAk6EBI0IGQ\noAMhQQdCgg6EBB0ICToQEnQgJOhASNCBkKADIUEHQoIOhAQdCAk6EBJ0cLsO6Rtvm8vFe/B3\nZpW6XYe0ef/7zmHjgXvwd2aVul2H9J9OmGeCV2/Yg78zq5SQoAMhQQdCgg6EBB0ICToQEnQg\nJOhASNCBkKADIUEHQoIOhAQdCAk6EBJ0ICToQEjQgZCgAyFBB0KCDoQEHQgJOhASdHDHDunT\nj57Lb9+8fYL//W/mmuA3r7t1n2l2uzt2SK879NlzOLndsH2Cdx8wzwRPad++dZ9pdrs7eEjH\nzDPBm6ZCuus8E1wgpFVHSHVCIhFSnZBIhFQnJBIh1QmJREh1QiKZN6QtL93rweMr72oT59bn\nEBKrxpwhffVBGxZDekM7dfOCqE8iJFaN+UL62Z2Ov2L9JKSz2+fn/dlCYtWYL6Qfn7VltBjS\ni9oV8/5sIbFqzP9mw2JIp7Wrtn7nqrlmEBKrxi6H9KT28oNbu+8Fc8wgJFaNXQ7pxHbUee95\n2YHtrdP3XfW0317yxAfevNPthcQqsssh/eWfXTtcfmX9ITdO3ffTF5y55OR24063FxKryC6H\ntOiUdtmMcZ8T0kpCWn16hfScNuuDJCElQlp9djWka9783vHaw9uVM8YJKRHS6rOrId288YCv\nDYuPtuNmjRNSIqTVZ76QPrN58+a97zZc/Gh00Zr9z/i9U9YcePmssUJKhLT6zBfSeYvfVF34\nVsOljz1o7eFPn/31BiElQlp9dv8/oxBSIqTVR0h1QiIRUp2QSIRUJyQSIdUJiURIdUIiEVKd\nkEiEVCckEiHVCYlESHVCIhFSnZBIhFQnJBIh1QmJREh1PUP68Ss2z+Ns/+/M2xgh1fUM6S/W\nPHgOx7Yv7IY/KXaBkOp6hvTx9fNM8LH5/zvR7B5CqhMSiZDqhEQipDohkQipTkgkQqoTEomQ\n6oREIqQ6IZEIqU5IJEKqExKJkOqERCKkOiGRCKlOSCRCqhMSiZDqhEQipDohkQipTkgkQqoT\nEomQ6oREIqQ6IZEIqU5IJEKqExKJkOqERCKkOiGRCKlOSCRCqhMSiZDqhEQipDohkQipTkgk\nQqoTEomQ6oREIqQ6IZEIqU5IJEKqExKJkOqERCKkOiGRCKlOSCRCqhMSiZDqhEQipDohkQip\n7rYV0ucumcdf3bw0wWVzTfDpWX+qd1BCqrtNhfTFNp9PbZ/g+3NO8N4+u8dqIaS621RIn28f\nm2eG9R/fPsG32wXzTHDXd3faP1YJIdUJKYS0kpDqhBRCWklIdUIKIa0kpDohhZBWElKdkGKH\nkL7xhXlcvrrePxdSnZBiOqQta+d7//yNu7xr3ZYIqU5IMR3SDe38i+Zwn9ft8q51WyKkOiHF\njiG9aZ4JjhFSjZASIYWQyoSUCCmEVCakREghpDIhJUIKIZUJKRFSCKlMSImQQkhlQkqEFEIq\nE1IipNghpHPPnMtfzb9T9iekOiFF35AOfMgT5nDYS+bfKfsTUp2QonNIvz/PBL8mpEVCEtKY\nkG4JISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqElAgphFQmpERIIaQy\nISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqElAgp+ob06/P918c3z7E7\nzyKkOiHFbSyko3/n/Dkcf/ocu/MsQqoTUtzWQnrxPBOcJKRFQhLSmJDmICQhjQlpOyEJaUxI\nt4SQEiGFkMqElAgphFQmpERIIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQ\nEiGFkMqElAgphFQmpERIIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGF\nkMqElAgphFQmpERIIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqE\nlAgphFQmpERIIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqElAgp\nhFQmpERIIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqElAgphFQm\npERIIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqElAgphFQmpERI\nIaQyISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkMqElAgphFQmpERIIaQy\nISVCCiGVCSkRUgipTEiJkEJIZUJKhBRCKhNSIqQQUpmQEiGFkBZteeleD55c+8mLjlx39zO+\nP3OkkBIhhZAmvvqgDYsh3figtunVz1x3r6tnDRVSIqQQ0tjP7nT8FesnIf1Re+1w+YF21qyx\nQkqEFEIa+/FZW0aLIR274ecLi3sftm3GWCElQgohLZmEdMPejxqvnd6unDFOSImQQkhLJiH9\nY5s8mrPbJTPGCSkRUghpySSky9vzxmvntw9P3Xft+X+w5D8IaSUhhZCWbA/p+eO117WPTN33\nTyc9eslDhLSSkEJISyYhXdFOG6+9on1qxjindomQQkhLJiHduPbE8dqpy/vGCkJKhBRCWrL4\n9vcJ+103XN58+D1mjRNSIqQQ0pLFkN7eXjlcvqWdM2uckBIhhZDGPrN58+a97zZc/Gi09RHt\n5HOesuZXr5s1VkiJkEJIY+e1RVeMRte8+Mh1G5/345ljhZQIKYRUJqRESCGkMiElQgohlQkp\nEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVII\nqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxI\niZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBC\nSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVC\nSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQU\nQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioT\nUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKk\nEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZ\nkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIh\nhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDK\nhJQIKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQI\nKYRUJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRU\nJqRESCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRE\nSCGkMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGk\nMiElQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiEl\nQgohlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgoh\nlQkpEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkp\nEVIIqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohlQkpEVII\nqUxIiZBCSGVCSoQUQioTUiKkEFKZkBIhhZDKhJQIKYRUJqRESCGkMiElQgohrfSuNnHurAFC\nSoQUQlrpDe3UzQti1gAhJUIKIa109vKf6c4JKRFSCGmlF7UrfvEAISVCCiGtdFq7aut3rvoF\nA4SUCCmEtNKT2ssPbu2+F8wcIKRESCGklU5sR533npcd2N46fePWiz645FwhrSSkENJKf/ln\n1w6XX1l/yHQu37rbwUs2tJ/P2FRIQhoT0rJT2mUz7nFqlwgphDTDc9qsD5KElAgphLTCNW9+\n73j58HbljBFCSoQUQlrh5o0HfG1YfLQdN2uEkBIhhZBWumjN/mf83ilrDrx81gAhJUIKISWX\n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"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 17 To analyze survival patterns of Titanic passengers based on class, gender, and age using graphical visualization."
      ],
      "metadata": {
        "id": "y8845JFbdkRK"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "if(!requireNamespace(\"titanic\", quietly = TRUE)) install.packages(\"titanic\")\n",
        "if(!requireNamespace(\"ggplot2\", quietly = TRUE)) install.packages(\"ggplot2\")\n",
        "library(titanic)\n",
        "library(ggplot2)\n",
        "titanic_df <- titanic::titanic_train\n",
        "titanic_df$Survived <- factor(titanic_df$Survived, labels = c(\"No\", \"Yes\"))\n",
        "table_class_surv <- table(titanic_df$Pclass, titanic_df$Survived)\n",
        "barplot(table_class_surv, beside = TRUE, legend = TRUE,\n",
        "        xlab = \"Class\", ylab = \"Count\", main = \"Survival by Class\")\n",
        "ggplot(titanic_df, aes(x = factor(Pclass), fill = Survived)) +\n",
        "  geom_bar(position = \"dodge\") +\n",
        "  facet_wrap(~Sex) +\n",
        "  labs(title = \"Survival by Class and Gender\")\n",
        "hist(titanic_df$Age, main = \"Histogram of Age\", xlab = \"Age\", breaks = 20)\n",
        "\n",
        "\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 1000
        },
        "id": "Tm9xeKZNdu02",
        "outputId": "7de6485c-9c0c-4b16-bc71-0af925a396e7"
      },
      "execution_count": 19,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "Installing package into ‘/usr/local/lib/R/site-library’\n",
            "(as ‘lib’ is unspecified)\n",
            "\n"
          ]
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Survival by Class”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3de2AU1aH48bMkGzQhRFAo8kbk\np7dWoGArLaIo3j5UBLXKRWkJYEUFjS3tL2K5oFikDVWvtVjrbWvV28dVifVxtb/yQ622Pku9\n1lusRNRSi4oaSkGeIXNnd5PZ3XPW2TmzZ5LZme/nj90zs2dnj5Cv2ceQCAtAyUR3LwCIAkIC\nDCAkwABCAgwgJMAAQgIMICTAAEICDCAkwABCAgwgJMAAQgIMICTAAEICDCAkwABCAgwgJMAA\nQgIMICTAAEICDCAkwABCAgwgJMAAQgIMICTAAEICDCAkwABCAgwgJMAAQgIMICTAAEICDCAk\nwABCAgwgJMAAQgIMICTAAEICDCAkwABCCpd7hOipMaHodD8PAR8IKUCtTVMOr0r2/cTX3/B8\nl0BC2n/XeSNqk/1O+tZW7/eBHkIKzm8OFR0O+qXX+7TceOPNrhN8hLT+yM511P3U632giZAC\n02p3dND51yz+fA8hareaOqp+SOurUymPn5DO+m5CCgYhBebHQlS+mBrcZ38Bf8fUUbVDajtK\niMTVO+3RLwcJMWgPIQWCkAKzTIgRmdE3r7/vdcv6hhDHp7bsrirsqx8JceL+yw/rP0WIf07P\nutMOb2vmqzx/n9X+88/0q6z95HfbrAIhHWw1T+pdO/kxe2uOEMekd99hT9rWMeVeO+NrM8ON\nB4vhTzlHyD2qtf8HU/pV9jvuuneVDXhCSIG5RYgej+RsSyH9TIjR19tDO6iqf6T2ny3EaR1f\n5fn7rAs6XuKc0V4gpF7fT9/W4yHL+p19/Upq97lCnNs55Xwh+u7tGD+60coeIfeo+yZ3bBzx\nqrQBbwgpMK9U2Jmc9oM/tXdsSyHZX8/DhyTHHrWtKv3KxdpdI8TPOr7K8/c9aGdyy0s/qizw\nCie1VXvhz5vqhBhi1/JRIVbae/fZmw91TjlSiPPy1tVxhLyj2jEe/fOnfnWOECdJG/CGkIJz\nXeb/632m3pb+7qKGJEb91R5ME+KL9tX9QtR+0PlVnrfve6ef3mBvnCnElwqEJC62Ms/fHrYs\n+zvcJ+ytdUL03985xW7xqrxldRwh76j1Qlxvb+ybufBbB/I34A0hBeiRSYlMS4fcbhUM6Wep\n7V8IcWhb+mt5tvNVnrevw2VCfKZQSC/Z1229hVhqWe/a38k2W9ZXhPiKM8VewjfzVpV/hMxR\nLxdi6J1vd+zK24A3hBSoN++cPzod05qCIaW/Wnf1EuIJq+0wIdY6X+V5+6y1047omQ5ySoGQ\nkunvGuOEqLevzhPiJssaJcQLzhQ7sSvz1tR5hNyjvpB6i1yMnLcm9c5D3ga8IaTA/fUq+8XS\nRwuFVJF55mS/6v+69ZgQAw/kvRPg7LvF/rKu+acxhxUO6ZD04AQhZthXv069rtkoxOjslGOF\nmJ63no4j5B3VeuyYzPfO4U/JG/CEkAK0r+N9hhX2F+WuVEhjU1s/cELqKOIhIY6yGoT4Ws7e\nnH077G8Q5++yrEsLh9Qz/SAfF2KufdU+XFRsvT7vY6v59uusnR3jb1/xx84j5B/VvudTyz9X\nZ6+z3055A14QUlA2nX105drM8Mf21+Rua6UQ/VNf9PPlkPYdKsQrw4T475y9OfueEJlnalMK\nhyRetq/31wqxPLVjuRD/frKoeCs75Tcik6jtpV6pZ36ZI+QfNaPt/j7p9yzUDRRDSEHZ3VeI\nYak3Aqx37G8X/2RZd9lfug9a1svVckiptOyncsdauXuz+9ba93vOsv7UQ4gTC4WUel/hP+3r\nR1M73qwQE5Pi87kLSX0qdEWrPXhgoBB9WjuOkHfUXdfVn5l+mvkZIe7L2wjuzydiCCkwqRch\niU/NumBylT34of0tKmG/KJn/tb6fVkJ6PP2K5NtW7t7svr/ZX+tTX3pg0FFC9H76nfyQ7IAq\nqr5y//W97WeCmbcGTk/d7Re56/jL4fae5NgTh6fWc0/nQ+QfdawQ5zz8+yeuSYqe71h5G/CG\nkIJzXWXnWdcVS1PbF6fHo35rfz3nn6LQPih1akLqM6Xs3px9l6XvN/B1+xuKWJYf0n/YTxdX\nZE4w/11mT+rEvrrdeev4y8TOdRy6JvsQeUd9aXDHjB4/sp8B5m7AG0IK0KZvfLpfsqrfxCv/\nnN5sWzmqatBF77xpf4l+kP8c7av2rpPTo+ze7L593/7owYMu/Ju19qjKwb/ID+mHQhxt3T72\noD5n/nfHnv39hLhQXsh/zT2qrvKwk1a15jxE3lGtt6897iPJ6qMvSp9lm7cBTwgpYt62n0j+\ntrsXEUOEFDFfFmJ8d68hjggpSu76zln2E8JHik+EaYQUJSel3iK4qLtXEUuEFCVf6Fl51PWc\nsd0dCAkwgJAAAwgJMICQAAMICTCAkAADCAkwgJAAAwgJMICQAAMICTCAkAADCAkwgJAAAwgJ\nMICQAAMICTCAkAADCAkwgJAAAwgJMICQAAMICTCAkAADCAkwgJAAAwgJMICQAAMICTCAkAAD\nCAkwgJAAAwgJMICQAAMISdtbvw/O6939HwefCEnbySI4Q7r7Pw4+EZK2iY1bgnLrR7r7Pw4+\n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\nAd8hbRsnaqfUL1wwe3K1mLTDZSIhEVIM+P8cae8NYytSHyMlJ9zW5jaPkAgpBko6RWj3xvXr\nW4plQkiEFAOlnmu397lHX3OfQUiEFAO+Q7r20dTlrX3sJ3fjX3CbSEiEFAO+Q0q/U/eQ6HnW\n/Imi7lWXiYRESDFQWkij6jbYl2sSc1wmEhIhxUBJIW0VV6XH0+Vflbm/+W7HtYRESNFXUkib\nxV3p8ZKkdONf/s8RjoFiTykLDB9CgqqkkNrqVqbHc/u6TOSpHSHFgP+QZj7f8u7iIz+why/X\nTHWZSEiEFAP+Q8q417J+WtPjOZeJhERIMeA7pNtvXNYwe/rkdZa1epDrL0EnJEKKAQM/RWjH\nAdebCYmQYsDIj+N6r8XlRkIipBgwElKj21EIiZBigJC0ERJUhKSNkKDyHdL4HAMIiZBizndI\nPXr0dFQQEiHFnO+QGmuzb9Xx1I6Q4s53SPs+fty+zjEhEVLc+X+zYcPBX+scEhIhxV0J79pt\nf79z9PhKl2mEREgxwC8a00ZIUBGSNkKCipC0ERJUhKSNkKAiJG2EBBUhaSMkqAhJW5mG9NLa\n4Lj9gNCYICRtZRrSoIpkUCpODG7Z5YKQtJVpSB8ZPzUoR08MbtnlgpC0ERIhqQhJGyERkoqQ\ntBESIakISRshEZKKkLQREiGpCEkbIRGSipC0ERIhqQhJGyERkoqQtBESIakISRshEZKKkLQR\nEiGpCEkbIRGSipC0ERIhqQhJGyERkoqQtBESIakISRshEZKKkLQREiGpCEkbIRGSipC0ERIh\nqQhJGyERkoqQtBESIakISRshEZKKkLQREiGpCEkbIRGSipC0ERIhqQhJGyF1ZUjPB/gjy982\nuE5C0kZIXRjSzoQIzoUGF0pI2gipC0PaLv5fYH/aM+oNLpSQtBESIakISRshEZKKkLQREiGp\nCEkbIRGSipC0ERIhqQhJGyERkoqQtBESIakISRshEZKKkLQREiGpCEkbIRGSipC0ERIhqQhJ\nGyERkoqQtBESIalKCal909rm5nWbi8wiJO8ISRaDkFoX9c/8q46hy3e5zSMk7whJFv2QtowQ\no+qXNTUtmTlQjGl1mUhI3hGSLPohzUve3TFqW51ocJlISN4Rkiz6IQ2Ymx3PGOIykZC8IyRZ\n9ENKrsiOr65ymUhI3hGSLPohDTsvO5423GUiIXlHSLLoh9SQWLUnM9q5VDS6TCQk7whJFv2Q\nto0TtVPqFy6YPblaTNrhMpGQvCMkWfRDsvbeMLYi9TFScsJtbW7zCMk7QpLFICTb7o3r17cU\ny4SQvCMkWSxC4hQh0whJFoOQOEXIPEKSRT8kThEKACHJoh8SpwgFgJBk0Q+JU4QCQEiy6Ifk\neorQa/36OGrFHr+PEU6EREiqYE4ROvBY9rc5/RvfkTwjJFn0Q+IUoQAQkiz6IXGKUAAISRb9\nkDhFKACEJItBSFaYTxF6rSrAXz1KSISkMPLjuN5rcbmxW0JaLxZfHZSehERICiMhNbodpZtC\n+o/moBxMSISkICRCIiQDCImQCMkA3yGNzzGAkMwgJFn0Q+rRo6ejgpDMICRZ9ENqrM2+VcdT\nO0MISRb9kPZ9/Lh9nWNCMoSQZNEPydpw8Nc6h4RkCCHJYhCStf39ztHjK12mEZJ3hCSLQ0ge\nEZJ3hCQjJAcheUdIMkJyEJJ3hCQjJAcheUdIMkJyEJJ3hCQjJAcheVemIY0Y3BiUKwipEyF5\nV6Yh9asZHZSPElInQvKuXEM6OrA/7B8SUidC8o6QZITkICTvCElGSA5C8o6QZITkICTvCElG\nSA5C8o6QZITkICTvCElGSA5C8o6QZITkICTvCElGSA5C8o6QZITk+PCQrgzw53MTkoyQZJEJ\nqb7fhKAcSUgyQpJFJ6Qhgf3VjiMkGSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJ\nCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQ\niiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4\nQlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMk\nBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQkoyQiiMkBSHJCKk4QlIQ\nkoyQiiMkBSHJCKk4QlIQkrSmEjAAAApKSURBVIyQiiMkBSHJQhNS+6a1zc3rNheZRUjeEZIs\nBiG1Luov0oYu3+U2j5C8IyRZ9EPaMkKMql/W1LRk5kAxptVlIiF5R0iy6Ic0L3l3x6htdaLB\nZSIheUdIsuiHNGBudjxjiMtEQvKOkGTRDym5Iju+usplIiF5R0iy6Ic07LzseNpwl4mE5B0h\nyaIfUkNi1Z7MaOdS0egykZC8IyRZ9EPaNk7UTqlfuGD25GoxaYfLRELyjpBk0Q/J2nvD2IrU\nx0jJCbe1uc0jJO8ISRaDkGy7N65f31Iok+3faHTMIiTPCEkWj5Bse5979DV179aZ5zpOEXs+\n5L6EJCMkWfRDuvbR1OWtfewnd+NfcJvIUzvvCEkW/ZDS79Q9JHqeNX+iqHvVZSIheUdIspiE\nNKpug325JjHHZSIheUdIsniEtFVclR5PH+QykZC8IyRZPELaLO5Kj5ckXSYSkneEJItHSG11\nK9PjuX1dJhKSd4Qki0FIM59veXfxkR/Yw5drprpMJCTvCEkWg5Ay7rWsn9b0eM5lIiF5R0iy\n6Id0+43LGmZPn7zOslYPetBtIiF5R0iy6IeUteOA682E5B0hyeIUUhGE5B0hyQjJQUjeEZKM\nkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJ\nQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE\n5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUje\nEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0h\nyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKM\nkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJ\nQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE\n5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUje\nEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZKMkByE5B0hyQjJQUjeEZIsFiG1b1rb\n3Lxuc5FZhOQdIcliEFLrov4ibejyXW7zCMk7QpJFP6QtI8So+mVNTUtmDhRjWl0mEpJ3hCSL\nfkjzknd3jNpWJxpcJhKSd4Qki35IA+ZmxzOGyLf+ZZPjng8P6fApQTlG3Pj9oBx08dNB+WaQ\nIX0ssD/tviMD+8NeKe4I7E/79FCElFyRHV9dJd34akJkJfZ/yCEuF5CM8vvXUdyo7v5vC5/L\nDf7x+g5p2HnZ8bTh8q3bW7Pe+7BD7G8NzlvBHfrt94I7tuvbNqXZFdyq3387uGMH+BfZ+mH/\nh/fDd0gNiVV7MqOdS0WjqeUA5cl3SNvGidop9QsXzJ5cLSbtMLkkoPz4/xxp7w1jK1JPNJMT\nbmszuCCgHJV0itDujevXt3zYe3JAjAR/rh0QA4QEGEBIgAGEBBhASIABhAQYQEiAAYQEGEBI\ngAGEBBhASIABhAQYQEiAAYQEGEBIgAGEBBhASIABhAQYQEiAAYQEGEBIgAGEBBhASIABhAQY\nQEiAAYQEGEBIgAGEBBhASIABhAQYEOOQ7hI9X8mMRo7p3pVE2+OJTx7IjFaKBd27lADFOiQx\nJTMipEDNF99NX7928JB/dPNSghPrkCaJu9IjQgrU9kG1f01df1483N1LCU6sQ/rlsP6tqVE6\npDfqByYPnfpsNy8qkh4Q0+3L/xSz7Mu3Lx2aPGzac/ZoT9Po3r2ObTrQzYszJNYh/dcD4qLU\nKBXS5v69vv6TFYN6Ptndy4qiGaLZ+vvh/d6zrK3D6hrvum5wz8cta444//u3nhWVl02xDulB\na1riKSsT0mz779qyNlRM6O5lRdE7fQdtv1T83B5dUvm8fbm59jjLqv5U6qavnBONX+Ud85A2\n1xy7Px1Se91H2lM7TxDvdfe6ougO8ZkeU+3r9sPGvZXyWbHDqhv4Tncvy6CYh2StEk3pkLaI\nU9I754mnunlZ0fRZ0ftN++pt0elP1k2i9xd//GZ3L8yUuIe0f3T1G6mQWsTU9M6FYm03Lyua\nfiUuTF21iLGPZGyzrHXTa0TitDe6e2lmxD0k66nEVGvUGOutju9Ic8Qz3buqiFor5qeu3hZj\nc/fuWTs7ceTe7lmRYbEPyfqyaD5mjGX1PTz9Gun4xLbuXVVEdYRkHXZQ+s93q3PDJSIanzgQ\nUmu/wR+1Q7pQ3GdvvJCY0s2riqjOkC4RV9mXWwecYT098I7UjgXiD925LmMIybpDCDukvw3o\nddUd1/SvfbGbVxVRnSG9M1TM+cl1Q5O/tvZ/rOrLq2+Z2+OE9m5emhmEZFknp0KyNs85vLL/\nv2zo1iVFV2dI1luXDKk85MzU07n3rxhZXTfmuh3dui5jYhwSYA4hAQYQEmAAIQEGEBJgACEB\nBhASYAAhAQYQEmAAIQEGEBJgACEBBhASYAAhAQYQEmAAIQEGEBJgACEBBhASYAAhAQYQEmAA\nIQEGEBJgACEBBhASYAAhAQYQEmAAIQEGEBJgACEBBhASYAAhAQYQEmAAIZWfGeKv3b0EyAip\nPLTfM+3wqn7jv/m2RUihREhlYduponrqwpkjRb8nCCmUCKksnCambbWvDny/os87hBRGhFQO\nHhHj9mdGK6Y8lQnp2emHJofNet3etadpdO9exzYdyB2hqxFSOZgp1uRspUL6/UEDl992ZW3/\n9yxrjjj/+7eeJRbkjtDVCKkcHJHYnrOVCumWcY/Zo5vFzZZV/anUzq+c05YzQlcjpHJQc0ju\nVudrpH2714lFllU38J2OG7IjdDVCKge1tblb6ZDuPPEQYWuwrJtE7y/++M3UDdkRuhohlYOj\nxLs5W6mQFovjbn/86R+mQrLWTa8RidPeyBuhixFSOZgjftwxan8xHdLug4fssLd+lQ7Jsvas\nnZ04cm/+CF2KkMrBE2L4PzKj74nvpUJ6XZyV2lrcEZLtEvGsMkLXIaSyMEMc/6p9tf+misNb\nUyHtSnzc3nxhkJhvPT3wjtSMBeIP2VF3LjWmCKksfDBdVJ48f8YwccTGzGukM8T8n/9rn4cr\nB//s7x+r+vLqW+b2OKF9vzPq7uXGECGViQfOHpisPf6WXVYmpK3n96s75Unrml4D3nr/ipHV\ndWOus18zZUfoaoQEGEBIgAGEBBhASIABhAQYQEiAAYQEGEBIgAGEBBhASIABhAQYQEiAAYQE\nGEBIgAGEBBhASIABhAQYQEiAAYQEGEBIgAGEBBhASIABhAQYQEiAAYQEGEBIgAGEBBhASIAB\nhAQYQEiAAYQEGPC/qnVg/0JINY0AAAAASUVORK5CYII="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "plot without title"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAACXBIWXMAABJ0AAASdAHeZh94\nAAAgAElEQVR4nOzdeXxU5d3w4TOTfUwIkICKoIJFBEHEfUdRbMEF/VgtonWvIGpRWxcqiiC1\ndeERrFoetLgVWzekFrfa2lpr1bprlaoFrYgghi0BAlkm7x/zNG/KEgZMMsnd6/qDT3LPycxv\nTrYv58xMYnV1dREAAG1fPNMDAADQNIQdAEAghB0AQCCEHQBAIIQdAEAghB0AQCCEHQBAIIRd\nU7rqqqtisdi0adOa8DrHjRsXi8Vuv/32rd6gZbSSMZrV22+/HYvFDj/88EwPkq42NzAAX1NQ\nYff3v/999OjRAwYM2G677XJycoqKivr27XvBBRfMnTu3ZQbo0KHDTjvtVFRU1DI31zKWLFky\nYcKEAw88sFOnTnl5eV27dj3ooINuueWWr776KtOjtV5fffXVpEmTDjvssG233TY3N3ebbbbZ\nddddTz/99GeffTbTowEQsnDCbubMmXvttdfPf/7zurq6IUOGnH/++d/61reWL18+bdq0AQMG\nPP300y0ww5VXXvnpp5+edtppLXBbLeP+++/v3r37dddd98Ybb+y8884DBw4sLi5+4403Lr/8\n8l69ev3ud7/L9ICt0X333bfzzjtfc801r776ardu3Y444ojdd9+9rKxs5syZ3/rWt84555x1\n69ZlekYAwpSd6QGaxsqVK0eOHJlMJh999NGTTjqpfj2ZTE6aNGn8+PGjRo2aN29ednYg97dl\n/PrXvz7zzDPj8fjVV199xRVXtGvXLrW+ZMmSH//4x7fddtvQoUNfe+21AQMGZHbOVuWXv/zl\nWWedlZ2dff31148ZM6b+8G1NTc2TTz550UUX3XPPPYlEIuxz1gBkSiBH7N56663Vq1fvu+++\nDasuiqJ4PH7ttdeeeeaZ3/72t+tPHV500UWxWOzee+9tuOUrr7wSi8WOPfbY1LtXX311LBZ7\n4okn7rzzzh122KF9+/aHH354LBb77W9/u95Nz5kzJxaLHXnkkdF/PsYune2jKCovLx87dmzv\n3r0LCgry8vJ69ux5+eWXl5eXb+keiMfjf/zjHwcOHNiuXbvCwsJDDjnk97//feqiQw45JBaL\nPfnkk+t9yJ/+9KdYLHbIIYds9AorKiouuOCCKIruuOOOSZMm1VddFEWdO3eeOnXqlVdeWVtb\n28gDCtO5a48++uigQYM6duyYm5vbpUuXIUOGrHdsdbMbbMXtXnPNNalP7vvvv3/iiSd27tw5\nPz9/zz33/NWvftXwev71r38NHz68tLQ0kUjsueeeM2bMaPx2oyhavnz56NGjoyi67777xo0b\n1/CkfHZ29rBhw/70pz8deeSRpaWlNTU19RfV1dXdfffdBx54YFFRUUFBQe/eva+55prVq1c3\nx8Cbva0Nv/I3e68BaD0COYJVXFwcRdGyZcuSyWQ8vn6trtdw6cjNzY2i6IUXXpg2bdqwYcMK\nCwv32WefF1544bHHHjvuuOMabvnwww9HUfTd7353vWsYMWLEZrevrq4+9thjX3zxxb333vui\niy6qrq5+5plnbrnllhdeeOHll1/OyspKf+C33377sssuO+KII773ve/NmzfviSeeGDJkyO9/\n//uBAweeffbZL7300j333HPMMcekM3nKL3/5yxUrVuyzzz6jRo3a6AbXXXfd6NGjd9xxx41e\nms5du+uuu84///xOnTqdcsopnTt3Xrhw4ezZs4855pj77rsvNdVmN9i62019ct96660zzjhj\n//33P/300z/66KMnn3xyxIgR22677aBBg6IoWr58+aGHHrpgwYLDDjvssMMO++qrr66++uoh\nQ4Y0/lm49957KyoqDjvssBEjRmx0g1122aU+uOudccYZv/zlL7fffvuRI0fm5eU9//zzkyZN\nmjNnzp///OdUGjbhwGneVsOv/MbvMgCtS10Qqqurd9tttyiKjj766DfffLPxjS+88MIoiu65\n556Giy+//HIURcccc0zq3RtuuCGKouLi4meffTa1smzZstzc3A4dOlRVVdV/1Nq1a4uLiwsK\nCsrLy+vq6q688sooilKP80tn+8ceeyyKogMOOKCmpia1wbp161J35IknnkitXH311VEU/exn\nP9vU3UltEI/Hf/Ob39Qv3nzzzVEUHXzwwXV1deXl5YlEIjc3t6ysrH6Dmpqazp075+XlLV++\nfKNXmzr2OXny5MZ35npj1M+Zzl3r169fFEX//Oc/669kwYIFRUVFBxxwQJobbCid2/3JT34S\nRVFubu4DDzxQ/4E//OEPoyg688wzU+9ee+21URR95zvfqd9g0aJF2223XRRFAwcO3NStH3/8\n8Y1/sjb00EMPRVG09957p74k6urqksnkRRddFEXRVVdd1bQDp3NbG37lA9CGBHIqNjs7+/HH\nH+/Tp8/vfve7vfbaa+eddz799NPvvPPO9957b+uuMBaLRVHUu3fvo48+OrXSoUOHb37zm8uX\nL3/++efrN3vmmWdWrlw5bNiwDZ8Jm872e+2116xZs372s5/VH5zLzc0dNmxYFEXvvvvuFg28\n3377paoi5aKLLsrPz//rX/+6bNmyoqKik046qaqq6sEHH6zf4I9//OOSJUuOO+64TZ1rmz9/\nfhRFqbTaCunctRUrVsRisW222ab+o7p27VpWVpaK7HQ22LrbTdl3331PP/30+ndPPvnkKIo+\n+uij1Lu/+c1voii65JJL6jfYbrvtUuemG5HaaX379m18s4buuuuuKIp+8pOf1H8JxWKx66+/\nPicn57777mvagdO5rQ2/8gFoQwIJuyiKdtttt3ffffehhx465ZRT1q1bN3PmzAsvvHCPPfbY\ncccdf/zjH2/d8xAPPPDAhu+mzq89+uij9SuNn83c7PY777zziSeeuM8++0RRVFFRsXjx4sWL\nFycSiSiKKisrt2jU9R4ql5+fv9tuu9XV1X344YdRFJ199tnRf56Sbnzy1DxRFG31S7ekc9eO\nO+64urq6I444YsaMGYsXL04tpk4FprnB1t1uygEHHNDw3Q4dOtRvk0wmUy+R079//4bb7L//\n/o3f61WrVkVRtOHpy/bt28f+009/+tPURa+88koURQcddNB62/ft23fRokWfffZZEw6c/m2t\n95UPQFsRyGPsUrKysk455ZRTTjkliqL58+e/9NJLc+bMefLJJ8eNG/fEE0+8+OKLjTfBhjp1\n6tTw3eOPP76wsHD27NnTpk3Lyspau3btb3/7286dO2/q2EY628+ePfuWW25544031q5du+X3\n+P/bfvvt11vp2LFjFEXLly+Poujwww/v3r37m2+++d577/Xr16+mpmbWrFmlpaWNPGgs9WyJ\n1Idvnc3etSlTptTW1s6YMePcc8+NoqhPnz7HHnvsqFGjunfvnuYGW3e7KanTlPVSR6rq6uqi\nKFq1alVVVVV+fn5BQUHDbUpKShq/y6nHem640w4//PBU80VR9Pnnn6dqO4qiysrKTbVgysKF\nC+sfxfg1B96i21rvKx+AtiKosGuoR48ePXr0+O53v/vll18eddRRf/vb32bMmLGp5wFsSk5O\nTsN3E4nEsGHDZs6c+cILLwwaNOipp56qqKg4++yzN/UqKpvdfvr06SNHjiwqKho1atR+++1X\nXFwcj8dnz579v//7v1t6fzd8pkXqF3/qqSSxWOyMM86YMGHCvffeO3ny5N///vdLly69+OKL\n17uDDfXq1evNN998/fXXN/uMgY1K567l5ORMmzZt/PjxTzzxxNNPP/3888/fdNNNU6ZMeeCB\nB1J1vtkNtu52NytVS6l/G6qtrW38A3fbbbd33nnn9ddfHzx4cMP12bNn1799++23X3zxxam3\nU5+jWCyWeoTchtaLua8z8BbdViNfGAC0ZuGE3dKlSzt27Jj67dXQtttuO3r06NGjR7/22mup\nsGt4qKPeokWL0rmVESNGzJw587HHHhs0aNAjjzwSNXo2c7PbT5w4MYqiOXPmHHbYYfWLjTyA\nrBFlZWXrrSxdujT693G7KIrOOuusiRMnPvTQQ7fcckvqwXZnnHFGI1d41FFH/epXv7rvvvvG\njh270XKtq6ubNGnSySefnHpqwnrSv2upZ2iOHDly7dq1995778UXXzxy5Mhhw4bl5eWlucHW\n3W4jCgsLs7Ky1q1bV1lZ2fAYWP3p4E05+uijH3roofvuu+/KK6/c8NnZG8rPzy8uLl65cuWF\nF174dQ6SpTNwU90WAK1ZII+xO/jgg0tLS5955pmNXrpkyZIoivLz81Pvpt5Y73zZa6+9ls4N\nHX300aWlpb/97W8rKyt/+9vf7rbbbqmHc23F9uvWrVu4cGFhYWHDBKmrq9vUvWjcq6++2vDd\ndevWffjhh/F4vL66dt5558MPP3zhwoXPPPPM448/3rt378YnP/XUUzt37jxv3rzU0103dMMN\nN1x77bWpk6TrSfOu/etf/2rY0/n5+aNGjTrooINWrFiRehbCZjfYutvdrKysrJ49e0YbPN/i\nL3/5S+MfOGLEiO233/7DDz+cNGnSprb5/PPPG76behjcn//85/U2W7ZsWZMP3CS3BUBrFkjY\nDR06NIqiM88887nnnmu4XldX99hjj910003Rv59FGEVRjx49on+/+EVqZe7cuaknDG5Wdnb2\nySefvGDBgltvvXX16tUNn6W4pdvn5eV17Nhx1apVCxYsqJ924sSJqcewr1ixIp156v3hD3/4\n61//Wv/uXXfdVVlZecQRRzR8YeGzzjoriqILL7xw1apVjR9ojKKooKDgF7/4RSwWu+mmm845\n55yGx34WL1584YUXjhs3rl27dnffffeGH5vOXXvnnXdST16uqqqq/8CKior58+dnZWV17tx5\nsxts3e2mKfUV9T//8z/1K5988skvfvGLxj8qPz///vvvz8rKGj9+/OjRo1P/o6j3zjvvnHba\naTfeeGNeXt7ee++dWkyV8XXXXdfwb++++OKL2267bf1XbFMN3FS3BUDr1cIvr9JMampq6v9C\na/fu3U888cTTTjtt6NCh3bp1i6IoHo//+Mc/rt/4yy+/TOXOgQceeOmllw4fPrywsDD1wm9D\nhgxJbZN65bCbb755w9t68cUXoygqKiqKxWKffPJJw4savo5dOttfdtllURT17Nlz0qRJkyZN\nOuCAA3r16pX6O/ElJSU//elPFyxYsNnXsUvd6Pe+97127dqdeeaZEyZMGD58eFZWVl5e3iuv\nvNJwy9WrV6ee5RqPxz/77LN0duyjjz6a2lfxeLx///6DBw/u27dv6jko3bp1e/fdd+u3XG/O\ndO5a6lnDPXr0uPDCC6+99trRo0fvtNNOURSNGTMmdSWb3WBD6dzuRj+5H3/8cRRF/fv3T727\ncOHC0tLSKIr22Wefiy++ePjw4cXFxamXjmvkdexSnn766dSzFuLx+IABA4YMGXLooYfusMMO\nqa/PAQMGvPzyyw23P/XUU6Mo2mGHHS677LLx48efdNJJOTk5RUVFr776amqDJhx4624LgLYi\nkLBLefbZZ0877bRvfOMbBQUF8Xi8Xbt2e+yxx4UXXtiwP1Lee++9QYMGJRKJwsLC/ffff/bs\n2aljGIcffnhqg0Z+vSWTyZ133jmKokMPPXS9izYado1sX1lZefXVV++yyy55eXndunUbPXp0\n6jWEzzrrrG222Wa77bZ79913Nxt2qZcue+SRR/74xz8edthhhYWF22yzzcCBA1988cUNN04d\nsxk0aNCmrm1DZWVlEydOPOCAA0pLS7Ozszt06HDYYYfdfffdlZWVDTdbb8507lptbe0dd9xx\n0EEHlZaWZmVlFRcXH3rooTNmzEgmk6kr2ewGG0rndtPppLq6urlz5w4bNqx9+/b5+fn9+vW7\n6667Ug9b3H///Te708rLy2+55ZZBgwZtu+22OTk5HTp06NOnz7nnnvvkk09uOHxtbe1dd92V\n+jNf2dnZXbt2PeOMM+bOnVu/QRMOvHW3BUBbEavb4Jl0BOwnP/nJj370owceeGCzJ5EBgDZH\n2P0Xqa6u3mWXXSorKz///PONPqUUAGjTAnnyBOm44oorFixY8P3vf1/VAUCQHLEL3z/+8Y97\n7733pZde+stf/tK/f/+XX355vb9PAACEQdiF7/nnnx88eHAikTjuuOOmTp3qxWkBIFTCDgAg\nEB5jBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABCI7EwP0AQ+//zzTI8A\npCsWi+2www6bunTRokW1tbUtOQ/wdXTt2jXTI/AfQgi7NWvWZHoEIF2xWKyRSysrK2tqalps\nGIDAOBULABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGFHM/rHP/5x2mmnHX300StWrGjy\nK6+trT3iiCP+9re/Nfk1A83N9y80E2FHM5o1a1anTp1mzZrVrl27TM8CAOEL4QWKabVWrVq1\n4447FhYWZnoQAPivIOxoLmPGjHn//fejKHruuecefPDBurq622+//Z133lmzZk2vXr1Gjx69\n6667JpPJI488cuzYsU8//fSiRYsKCgquvvrq55577o033li+fPnJJ588fPjwKIo++eSTO++8\n8x//+EddXV2fPn3GjBmz3t+kWrZs2YZXnpm7Df81fP9CK+RULM1l6tSp++6779ChQ59++ukO\nHTqMGzcuiqJ77rln9uzZ/fr1u+qqq9atWxePx7OysubMmXPDDTfMnDmzuLj40ksv7du37913\n333llVfefffdy5cvj6Jo/PjxHTt2fOSRRx566KFEIvGTn/xkvdva6JW3/F2G/yq+f6EVEna0\nhI8++mju3LkXXXRRu3bt8vLyzj777Orq6r/+9a+pS4866qiCgoKsrKw+ffoUFBQceuihURT1\n69evtrZ20aJFURTdeeedl156aX5+/jbbbDNo0KDUf/3TvHKgWfn+hVbFqVhawueffx5F0Ukn\nndRw8Ysvvki9UVpamnojNze3pKSk/u0oiqqrq6Mo+vjjj++///7PPvssiqKqqqra2tpkMpnm\nlQPNyvcvtCrCjpaQl5cXRdGzzz6b+nG/nlgsttG3UxYuXHjllVeeeeaZN954Y25u7ksvvZQ6\ncZPmlQPNyvcvtCpOxdISUo+V/uc//1m/kv7/yD/88MNkMjl8+PDUz/0PPvigCa8caFa+f6GF\nCTtaws477zxgwIA777zzyy+/rK2tfeKJJ84999ylS5em87HbbbddbW3t+++/X11d/Yc//CH1\nTNuysrImuXKgWfn+hRYm7Ggh48aN69Sp07nnnnv88cf/7ne/++lPf1r/cJzG9enTZ/jw4Vdf\nffVJJ5305ptvTpo0addddz3vvPMWL1789a8caFa+f6GFxRo+O6mN+uijjzI9ApCuWCzWs2fP\nTV06f/78mpqalpwH+Dq86GBr44gdAEAghB0AQCCEHQBAIIQdAEAghB0AQCCEHQBAIIQdAEAg\nhB0AQCCyMz1AE+jcuXOmR9gChYWFdXV1q1evzvQgrVosFissLKypqamsrMz0LK1aVlZWIpGo\nqqpat25dpmdpGqWlpclkMtNTpCs3NzcvL6+ystKLKjcuPz8/Jydn9erVbeiTmxGJRCIrK6ui\noiLTg9CGhRB2betHalZWVjKZbFszt7xYLJaVlVVbW2tHNS61o6I29V0Qi8UaubSmpqYN/e7P\nzc31HZ2O+u/o2traTM/SqsXj8aysLF9OfB1OxQIABELYAQAEQtgBAARC2AEABELYAQAEQtgB\nAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELY\nAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEQtgBAARC2AEABELYAQAEIrsFbmPB\nggX33Xff3Llz6+rqunfv/t3vfne33XaLomjVqlXTp09/9913q6ure/XqNWrUqM6dOzeyDgBA\nI5r9iF1NTc0111yzzTbb3HTTTZMnT+7UqdOECRMqKyujKJoyZcqSJUvGjx9/8803JxKJiRMn\nJpPJRtYBAGhEs4fd6tWrhw0bNmrUqB122GH77bc/+eSTV69evWjRorKystdee+3888/v3r17\nly5dRo0atXDhwvfee29T6809JwBAW9fsYVdcXHziiScWFBREUVRRUfHEE0907dq1W7duH3/8\ncU5OTvfu3VObFRYWdu3a9cMPP9zUenPPCQDQ1rXEY+yiKEomkyeffHJ1dXXfvn2vv/76nJyc\n8vLyoqKiWCxWv01xcfHKlSuLi4s3ut7w2s4888wVK1ak3j700EMvvfTSlrkXTSIWi2VlZXXo\n0CHTg7QBOTk5dlTjUt8p+fn5ubm5mZ6labRr167ht38rlxq1sLCwrq4u07O0avF4PIqidu3a\nZXqQ1i61o/zc4+toobCLx+NTp05dvnz5k08++aMf/Wjy5MnRv38mbmizP9YrKioqKipSb1dW\nVqa+E9qWtjhzy4vFYnZUOtrWjmq8gdrWfUmJxWJtKEYzIrV/Wv9ntuqqMZkeIcq78bbWv6No\n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\nSURBVPfuXbp0GTVq1MKFC997771NrTf3nAAAbV2zn4otKioaO3Zs/btLly6Nx+OlpaX/+Mc/\ncnJyunfvnlovLCzs2rXrhx9+uGbNmo2u9+/fv7lHBQBo01riMXb1Kioqfvazn51wwgkdOnQo\nLy8vKiqKxWL1lxYXF69cubK4uHij6w2v5+ijj162bFn92zfccEPLzN9UsrKySktLMz1FG5Cb\nm2tHpaOgoKCgoCDTU6Srrq6ukUvbt28fj7exJ3W1a9cu0yO0DR06dMj0CJuxLtMDpPi5x9fR\ncmH3+eefX3/99XvuueeZZ56ZWmlYbw1tar1ez549y8vLU2/vsMMONTU1TThnc8vOzq6rq6ut\nrc30IK2dHZWOWCyWlZWVTCbb1uNQs7M3+ZOntra2Dd2XeDwej8dra2sbr1WysrJisZgdlaY2\n90st0yPwH1ro8/HOO+/cdNNNp5566rHHHptaad++fXl5eV1dXX3GrVy5skOHDptab3htd9xx\nR8N3y8rKmv8eNJmSkpJkMrlixYpMD9KqxWKxkpKS6urq+oJno3JycoqLi9etW7d69epMz5Ku\n1Cd3U5dWVFS0obBLJBKJRGL16tVVVVWZnqVVKyoqysvLKy8vb+X/VSvK9AApbesXhOOLrU1L\nnPL44IMPbrzxxssuu6y+6qIo6tmzZ3V19bx581Lvpp5R0bt3702tt8CcAABtWrOHXVVV1ZQp\nU44//viddtqp7N/Wrl3bsWPHAw888I477vjkk08WLlx466237rLLLn369NnUenPPCQDQ1jX7\nqdi5c+cuXrz4wQcffPDBB+sXR44cecwxx3z/+9+fPn36ddddV1tbu/vuu48bNy51+nVT6wAA\nNKLZw65///5PPPHERi9KJBKXXHJJ+usAADSijb2sAAAAmyLsAAACIewAAAIh7AAAAiHsAAAC\nIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAA\nAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewA\nAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHs\nAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh\n7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAAC\nIewAAAIh7AAAAiHsAAACIewAAAIh7ACAVqesrOyGG27Ye++9S0tLc3JyOnfu/K1vfevZZ59t\njts64IADdttttya/2uHDhxcWFjb51TYuu4VvDwCgccuWLdt3332XLFlyzjnnXHbZZVlZWfPm\nzZsxY8bQoUNnzpw5fPjwpr254cOHV1ZWNu11ZoqwAwBal/vuu+/TTz/99a9//Z3vfKd+cfTo\n0f369bvqqqtOOeWUeLwpTzlecsklTXhtmeVULADQuixatCiKor333rvhYocOHV555ZW5c+em\nqm7PPffcc889G25wwgknlJaWpt4+5JBDDjvssDlz5nTr1u2ggw465JBDSktLa2pqGm5/wAEH\ndOnSpba2tv5UbOObRVH0wgsvDB48uF27dolEYq+99poxY0b9ZnV1dRMnTuzWrVt+fn6/fv0e\nffTRJtwh6RN2AEDrstdee0VRdMUVV6xYsaLheteuXQsKCtK5hry8vJUrV15++eVjx469+uqr\nR4wYsXTp0j/+8Y/1G3z22Wd/+9vfTj311KysrPrFxjf7wx/+cOSRR1ZVVT344IO/+c1v9t9/\n/3PPPXfy5MmpLW+++ebx48cPHDhwzpw511xzzYQJE95+++2vsxO2jlOxAEDrcsoppzz++OMP\nP/zwU089deSRRw4cOHDgwIH77rtv+mdgY7HYu+++O2vWrBNPPDGKorKysjFjxjz66KODBw9O\nbfDwww/X1dV997vfXe92G9ns8ssv7969+9NPP51IJKIoGjx48BdffDFhwoQLL7wwLy9v6tSp\nffv2/eUvf5n6wEMPPXSnnXbKzc1tiv2xBRyxAwBal3g8/tBDDz3zzDMnnXTS22+/feWVVx5w\nwAHbbrvt2LFj16xZk+aV5ObmHnvssam3S0tLBw8ePHv27GQymVp5+OGHd9999/VO5jay2ZIl\nS956661jjjkmHo+v/behQ4dWVFS89957CxYs+OKLLwYNGlR/Vdtvv/0+++zzdXfElhN2AEBr\n9M1vfnPmzJkLFy6cN2/eXXfd1bt375/+9KdHHXVUfXU1LvU6KfXvjhgxYsmSJX/+85+jKPr0\n009fe+219Q7XNb7ZF198EUXR1KlTCxoYNWpUFEWff/754sWLoyjq1KlTw6vq0qXLVt/3reZU\nLADQqvXo0aNHjx7nnnvueeedN2PGjL/85S+HHXbYZj+qYdVFUXTCCSckEolHH3308MMPf/jh\nh2Ox2IgRIzb8qMY3O+ecc773ve+t9yHf+MY35s2bt+FVpZ5v0cIcsQMAWpF169bNnDlz9uzZ\n663HYrGBAwdGUbRgwYIoiuLx+HrllDpstimFhYXHHXfc448/HkXRI488MnDgwG7duqW/2Y47\n7hhFUeoptOspLS1NHatbb4BPP/10S+/71yfsAIBWJDc3d8KECeeff/78+fMbrtfW1j7yyCNR\nFO2xxx5RFHXo0GHx4sV1dXWpS5csWfLuu+82fs0jRoz44osvZs+e/frrr2/0PGwjm3Xs2HG/\n/fabPXt2wyfq3n///ePGjaupqdl5551LS0ufeeaZ+tPEH3300TvvvLPFd/5rE3YAQCsSi8Wm\nT59eWVm55557nn/++bfddtsvfvGL66+/fq+99pozZ87FF1/cr1+/KIqOP/74srKyG2+88csv\nv3zrrbeGDx/eo0ePxq95yJAhHTt2/MEPfpCfn//tb397Sze76aab1qxZM3DgwPvvv/93v/vd\nNddcc9555y1cuDA7Ozsej19wwQXz5s07+eSTZ82aNW3atKOPPjr1oi0tzGPsAIDW5fDDD3/1\n1VcnT578/PPP33///bW1tSUlJXvttde111570kknpba54IILPvvss9tvv/26667bbbfdJk2a\n9Mwzz9x///2NXG1OTs63v/3t6dOnn3zyye3atdvSzQYOHPj8889PnDjxoosuWrt2bffu3X/8\n4x9feumlqUvHjx9fXV197733zpkzp1evXlOmTPnDH/7w3nvvNcX+2AKx+mOYbVdZWVmmR9gC\nJSUlyWRy+fLlmR6kVYvFYiUlJVVVVeXl5ZmepVXLyckpLi6urKxcvXp1pmdJV+qTu6lLly1b\nlubz3VqDRCKRSCTKy8urqqoyPUurVlRUlJeXt3z58ow8ljx9RTdPzPQIUd6Nt7WtX2r1f+mB\nVsKpWACAQAg7AIBACDsAgEAIOwCAQKQVdvvss8/cuXM3XH/sscf69OnT1CMBALA10gq7N954\nY8Pn3NXU1Lz//vsb/RsaAAC0vM28jl0sFku9se+++250g4y8+B4AABvaTNi9/fbbL7zwwpgx\nY4YNG7bea9XEYrEuXbps+KdwAQDIiM2EXf/+/fv37//UU0/dfPPNPXv2bJmZAADYCmn9SbFn\nnnmmuecAAOBrSivslixZcsUVVzz33HOLFy/e8K/9BPBHyQCAVqKZ/qjaf8lfP0sr7C666KLH\nH3984MCBgwcPzs5O60MAALZO0/7d3orLr23Ca2vl0qq0559//tFHHx02bFhzTwMAwFZL63Xs\nKisrDzrooOYeBQCAryOtsNt7773ff//95h4FAICvI62wu/XWW6+88sqXX365uacBAGCrpfUY\nuzFjxixatOiggw5KJBKdOnVa79JPP/206ecCAGALpRV28Xh811133XXXXZt7GgAAtlpaYffn\nP/+5uecAAOBrSusxdgAAAdtnn30KCgo+/vjjhot9+/adNm1apkbaOmkdsWvkxZqrqqrKy8ub\nbh4AgAzYZpttRo4c+fzzz2d6kK8lrSN2h2xgl112WbNmzfbbb3/GGWc094gAAM3t0ksvfeed\nd2bMmLHRS7/88stTTz21S5cuiUTi4IMPfumll1p4vDSldcRu9uzZGy4uXrz4O9/5zpAhQ5p6\nJACAlta+fftbbrnlBz/4wbHHHtu5c+f1Lh02bFj79u3ffvvtwsLCa665ZujQofPmzWuFf392\n6x9jt912202ePHn8+PFNOA0AQEbU1dWdffbZAwYMGDNmzHoXvfXWW6+++uqtt97auXPnRCIx\nadKk2trap59+OiNzNu5rPXmia9euH3zwQVONAgCQWf/7v/87e/bsp556quHivHnz4vH4brvt\nlnq3oKBgp512ap2v45vWqdiNqqurmzFjRklJSRNOs3WysrIyPcKWicVibW7mFhaLxSI7Kg3x\neDwKa0fF4/HUZ79NSI0aj8eD2f/NJLWj7KU02VGZ9Y1vfOPaa6+94IIL3n///UZ+HCWTyaqq\nqpYcLE1phd2ee+653kptbe3ixYvLysp++MMfNsNUW6awsDDTI2yB1FdJ25o5U7Kzs+2oxqW+\nnHJzc4P5TZBIJNpQ2KXCuqCgIC8vL9OztGqpr89EIlFXV5fpWRqTzPQAKX7uZdzll1/+q1/9\naty4cTk5OamVnj17JpPJDz74YPfdd4+iaPXq1f/617969uyZ0TE3biuP2OXk5Oyxxx7Dhg0b\nNWpU0w60FVauXJnpEbZASUlJMplsWzO3vFgsVlJSUl1d7cV0GpeTk1NcXLxu3brVq1dnepZ0\npT65m7p01apVyWQr+fW6eYlEIpFIrF69unX+x731KCoqysvLq6ioqK2tzfQsjSnK9AApbesX\nRCt89sDXl52dfffddx9yyCHt27dPrfTv3/+ggw66/PLLH3jggby8vCuvvLKoqOiEE07I7Jwb\nlVbYvf322809BwBAK7HffvtdcMEFt912W/3Kr371q+9///t9+vRJJpP77bffiy++2K5duwxO\nuClbcMRu6dKlr7zyyhdffBGPx7t27XrQQQcVFbWS/94AAGy9119/fb2VqVOnTp06tf7dHXfc\ncaOv/tbapBV2yWTyiiuuuO2226qrq+sXt9lmm/Hjx19++eXNNhsAAFsgrbCbPHny5MmTTzzx\nxGOPPXb77bdPJpMLFy6cNWvWFVdcse222/rjEwAArUFaYXfPPfdcdtllkydPbrh4/vnnjxw5\ncurUqcIOAKA1SOsFiufPn3/MMcdsuD5s2LC5c+c29UgAAGyNtMIuOzt7zZo1G65XV1cH8+pZ\nAABtXVphN2DAgP/5n/9Z74Wa1q5de+edd+6zzz7NMxgAAFsmrcfYjR079thjj+3Zs+fQoUN3\n2GGHurq6BQsWPPnkk4sXL3722Webe0QAANKRVtgNHTp01qxZY8eOnTZtWv1iv3797rrrrqOO\nOqrZZgMA/htVXH5tpkdoq9J9geITTjjhhBNO+OKLLxYuXBiLxbp167bttts262QAAGyRtB5j\nF0XR4sWLf/azn3Xp0mXffffdZ5994vH4xIkTlyxZ0qzDAQCQvrSO2H344YeHH374smXLLr74\n4tTKmjVrxo8f//Of//yll17q0aNHc04IAPx36fT3D5vw2r7q26sJr62VS+uI3VVXXVVYWPiX\nv/ylfmWnnXb64IMPCgsL/UkxAIBWIq2we+mll370ox/tu+++DRd79+59+eWXP/fcc80zGAAA\nWyatsFu1alVubu6G64WFhbW1tU09EgAAWyPdFyh+4IEH1mu4ioqKKVOmDBgwoHkGAwBgy6T1\n5Ilrr712yJAhu+6665AhQzp16pRMJhcsWDBnzpylS5c+9dRTzT0iAADpSCvsvvnNbz777LNj\nx46944476hf32GOPe++995vf/GazzQYAwBZI9wWKBw8ePHjw4KVLl37xxRdZWVndunUrKipq\n1skAANgi6b5AcUpJSUm/fv369Omj6gCAMPz617/Oy8v7+9//3nDx/vvvz8/P/+CDDzI11dbZ\nsrADAAjM8OHDjznmmPPOOy+ZTKZWvvrqq8suu2zChAl9+vTJ7GxbStgBAP/tfv7zn3/88cdT\n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\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBAZGd6gP9G2S++kukRoq/69sr0CEALKbp5YqZHiKIbb8v0BPBfwRE7AIBACDsAgEAIOwCA\nQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsA\ngEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQGRnegCArVR088RMjxBFN96W6QkA/j9H7AAA\nAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAiHsAAACIewAAAIh7AAAAuFPisHWaw1/\n0mpdFCWGfCfTU0Rf9e2V6REAcMQOACAUwg4AIBDCDgAgEB5jR+uV99fXMj2Ch44B0JY4YgcA\nEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEH\nABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhh\nBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAI\nYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABAIYQcAEAhhBwAQCGEHABCI7EwP0ARycnIy\nPULb08p3WiwWy/QI/6eV76jWI/0d1fgnNzs7u66urikmajltceaMyM7OjscdTdg8P3b4OkII\nu7y8vEyP0Pa08p3WesKule+o1qOpdlRubm6TXE9L0itpys3NVcDp8GOHryOEsFu1alWmR9gC\nreQ7tpXvtFgs1iZ2VFGLzdHqpf8VFYvF8vPzN3XpmjVrkslkmlfVSvb/2rVrq6qqMj1FY1rJ\njlqzZk1tbW2mp2hMK9lRrfzn83oa+XYmI/wvEwAgEMIOACAQwg4AIBDCDgAgEMIOACAQITwr\nFgDCEPvTS5keIYqi6Ku+vTI9AlvJETsAgEAIOwCAQAg7AIBAeIwdwNbziCigVXHEDgAgEMIO\nACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDC\nDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQ\nwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAg\nEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4A\nIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAgEMIO\nACAQwg4AIBDCDgAgEMIOACAQwg4AIBDZmR4AgPDF/vRSpkeIoij6qm+vTI8AzcsROwCAQAg7\nAIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAI\nOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBACDsAgEAIOwCAQAg7AIBA\nZGd6AFqjopsnZnqEaF0URUO+k+kpAKAtccQOACAQwg4AIBDCDgAgEMIOACAQwg4AIBDCDgAg\nEP9dL3fy/9q796Co6saP499dd4HdlYsKCMhFvCQmjDo6DCbBM2hiKSiBllpaYwjqjDZZGibe\nxfGSYN4ap9FRG1GbNlPQ1BxviTWEhc4oKo4ZIAwCCojc2d8f+3t2eMzWNYlzOLxff3HOd/fw\nOSe+9plz9pyVw1M8GgRP8QAAAP8KztgBAAAohBzP2D169Gjnzp1XrlxpbGwcMGBAYmKiu7u7\n1KEAAADkTo5n7NLS0kpLS5ctW7Zhwwa9Xr9y5cqWlhapQwEAAMid7IpdWVlZdnb2rFmz/P39\nvby8EhMTi4qKrl69KnUuAAAAuZPdpdhbt25ptVp/f3/zYteuXb29vW/cuDF48GDLa86fP9/Q\n0GD+uWfPnr17927/nB2dvb291BE6Bg6UjdrqQGm12jbZTmfDH6qNOFA24kB1XLIrdlVVVY6O\njiqVyrLG2dm5srKy9WtWr15dUVFh/nnMmDEpKSk2bry+rVJ2fI6OjlZGOVAWHCgbWT9QrZlM\nJiujBoNBrbb1SgLH34I/VBtxoGxk+4yG3Kis/yPb/k6cOHHw4MFdu3ZZrpnKbAAADg1JREFU\n1ixZssTPzy8+Pt6y5tChQ7W1teaf/f39hw0b1t4pX4BerzeZTJb8eCqVSqXX65ubm+vq6qTO\nImtqtVqn0zU2NlrOYcuf+T/u343W1NS0Z5gXpNVq7ezs6urqmpubpc4ia/b29hqNpra2lg9M\nW6fT6dRqdceaBQaDQeoI+B+yO2Pn4uJSVVVlMpksJ+0qKyu7devW+jWTJ09uvVhWVtZ++V4Y\nxc4WlmLHgbJOq9XqdLqmpqYOdKCsF7v6+voO9P9+lUplZ2fX0NDQgYq1JDQajUajoQE/k729\nvVqt7kDTWVDs5Ed2N0/079+/sbHx9u3b5sWqqqqCgoKBAwdKmwoAAED+ZFfsunfvPmLEiG3b\ntt25c6eoqCg1NbVv374vv/yy1LkAAADkTnaXYoUQ8+bN27lz5/Lly5ubmwcNGrRkyZLW91IA\nAADgqeRY7PR6/Ycffih1CgAAgA5GdpdiAQAA8M9Q7AAAABSCYgcAAKAQFDsAAACFoNgBAAAo\nBMUOAABAISh2AAAACkGxAwAAUAiKHQAAgEJQ7AAAABSCYgcAAKAQFDsAAACFoNgBAAAoBMUO\nAABAISh2AAAACkGxAwAAUAiKHQAAgEJQ7AAAABSCYgcAAKAQFDsAAACFoNgBAAAoBMUOAABA\nISh2AAAACkGxAwAAUAiKHQAAgEJQ7AAAABRCZTKZpM7QuWzatEmn082ePVvqILJWW1ubmpra\nr1+/yZMnS51F1goLC/fu3RscHDx69Gips3RGWVlZZ8+ejYuLe+mll6TOImtHjx69evVqYmJi\n9+7dpc4ia3v27CkqKkpKSlKpVFJnQUfFGbv2lpmZeerUKalTyF1DQ4PRaMzKypI6iNxVVFQY\njcarV69KHaSTysvLMxqNJSUlUgeRu5ycHKPRWF1dLXUQuTt37pzRaJQ6BTo2ih0AAIBCUOwA\nAAAUgmIHAACgENw8AQAAoBCcsQMAAFAIih0AAIBCUOwAAAAUQiN1gM6lqKgoNTU1Pz//8OHD\nUmeRr4qKil27duXm5jY0NPTp0+f999/n6a9PVVBQsGfPnuvXr5tMJn9//3fffTcgIEDqUJ0I\n09kWTGcbMZ3RVjhj134uXLiwePFib29vqYPI3erVq8vKylasWJGWlubq6rpy5cq6ujqpQ8lO\nU1NTcnKywWBYv379559/7ubmtmLFitraWqlzdRZMZxsxnW3BdEYboti1n8bGxo0bN4aEhEgd\nRNaqq6vd3Nzmzp3bp08fT0/P6dOnV1VVFRQUSJ1LdmpqaiZMmJCYmNirVy9PT89JkybV1NQU\nFxdLnauzYDrbgulsI6Yz2hCXYttPRESEEOL27dtSB5E1R0fHpKQky2J5eblarXZ1dZUwkjw5\nOzvHxMSYf66urj5y5Ii3t7ePj4+0qToPprMtmM42YjqjDVHsIF/V1dVbtmyZOHFit27dpM4i\nUy0tLZMmTWpsbAwMDFy1apVWq5U6EfB0TOdnYjqjTXApFjJVWFj48ccfBwYGzpgxQ+os8qVW\nqzdv3rxmzRonJ6fFixc/evRI6kTAUzCdbcF0Rpug2EGOcnNzFy1aFBUVNXv2bJVKJXUcWfP2\n9g4KClq4cGFlZeW5c+ekjgM8ielsO6YzXhzFDrJz7dq1devWffTRR+PHj5c6i3z99ttvs2bN\nqq+vNy+qVCqNhk9WQHaYzrZgOqMN8afTfh48eNDc3FxdXS2EKCsrE0J07drVwcFB6lzy0tDQ\nkJaWFh0d7efnZz5KggP1NP3796+rq0tLS5s6dapWqz169GhdXd2wYcOkztVZMJ1twXS2EdMZ\nbUhlMpmkztBZfPDBB6WlpU+siY6OliqPPOXm5iYnJz+xMiEhYdy4cZLkkbO7d+/u3r372rVr\nKpXK19f3nXfeGTx4sNShOgumsy2YzrZjOqOtUOwAAAAUgs/YAQAAKATFDgAAQCEodgAAAApB\nsQMAAFAIih0AAIBCUOwAAAAUgmIHAACgEBQ7QOGampqmT59uMBj0en1hYaG0YcrLy3v37j1z\n5kwhxPLly1X/y8nJKTw83Gg02rKp0NDQgICAfynnkiVLevTo8ccff/xL2weAfwlfKQYo3IkT\nJ/bt2zdt2rS33nqre/fu/3g7v//++9ChQ1/kkeYtLS1Tp051dnbeunWrZWVSUlKfPn3MowUF\nBXv37o2NjU1LS5s/f/4//kUvbsWKFVlZWXFxcRcvXrS3t5cwCQA8F4odoHDm7+hMSEh49dVX\nX2Q7Fy5ceMEk+/fvP3ny5NmzZ3U6nWVldHR0SEiIZXHhwoVBQUHJyckJCQkSfqNoly5dtm3b\nFhgYuHXr1gULFkgVAwCeF5diASUbPXr0e++9J4QICwtTqVTma4sHDhwIDg7W6/VOTk7Dhw8/\ncOBA67ecOnUqPDzc0dHRw8Nj8uTJ+fn5QoixY8fOmzdPCKFSqYYPH25+5fHjx8PCwhwdHXU6\nXWBg4KZNmyzn80JDQ8PCwjIyMnx8fF555RUhRHNz86pVq8LCwsLDw60EdnR0jI2Nra6uvnLl\nipU8f2Vlp4qLi+Pj4/38/BwcHDw8PGJjY/Py8p45NHDgwLi4uPXr19fU1Nh+wAFAWhQ7QMm2\nb9++bNkyIcRXX32VnZ3t5eV18ODBKVOmeHt7f/PNN+np6W5ublOmTMnMzDS//tSpU5GRkQ4O\nDl9++WVKSkpOTk5YWFhJScmWLVsmTJgghMjOzt63b58Q4vDhw+PGjTMYDF9//XVGRkZkZOSC\nBQsWLVpk3o69vX1lZeUnn3ySlJT02WefCSEuXrx48+ZNc8u0Tq/XCyEaGxut5HniLdZ36s03\n38zIyFi6dOnx48c3bdp069at8PDwx48fWx8SQsyYMaO0tNSyHQDoAEwAFG337t1CiAsXLpgX\nU1JSIiIi6uvrzYuVlZUajWbatGnmxeHDh/v7+zc2NpoXf/nlFzs7u82bN5tMJvMdD5bNBgQE\n+Pr6WrZjMpkmTpyo1WrLyspMJtOoUaOEEEaj0TKanJwshCgsLLSsMTfOS5cuPRE4NDRUo9E8\nfPjQep6RI0cOGDDgmTtVWVkphPj0008t28/Pz09JSSkqKrIyZF6sqamxs7ObOXOmbUcaAKTH\nGTugc0lKSjp9+rSdnZ150cnJycPD488//xRClJeX//rrr6+//rpG8/+fvg0ODq6vrzdfhG3t\n3r17eXl5b7zxhmU7QoioqKjGxsaff/7ZvGhnZzd+/HjL6OXLl3v27NmrV68nNlVRUVFSUlJS\nUlJcXJydnT1z5syffvopPj7e2dnZ9jxWdkqn0/Xo0SM9Pf306dMtLS1CiL59+yYlJXl5eVkZ\nMm9Hr9cHBATk5OQ891EGAIlQ7IDOpaqqaunSpUFBQc7OzhqNRqPRFBYWmmtNcXGxEMLd3f2Z\nGykqKhJCPNHSPD09hRD37t0zL7q6umq1Wsvo/fv3XV1d/7qpcePGeXp6enp6enl5BQcH7927\nd86cOampqc+Vx8pOabXa77//Xq1Wjx492t3dPS4ubv/+/U1NTdaHLFxdXc13nwBAh8BdsUDn\nEhUVdfHixUWLFo0dO9bFxUWlUkVGRpqH1Gq1EMLch6xTqVR/faXJZLJsRAjRutUJIaqqqp76\nsJXU1FTz4+hUKpXBYAgMDHRxcXnePFZ2SggxcuTIW7dunTt37vjx48eOHZs2bVpqaur58+d1\nOp2VIfN7XVxcHj58+MwAACATFDugE8nPzz9//nx8fPyaNWvMa5qamioqKvz9/YUQPj4+QoiC\ngoLWb7l7965er3dzc2u90tvbW/z3vJ2FedE89FdOTk7mz7Q9ISQkpPXjTlqzMY/1nTLr0qVL\nRERERETEhg0bduzYMWfOnEOHDs2YMcP6kBDi4cOHzs7OT40HADLEpVigEzHfatq6e+3YsaOu\nrq65uVkI4ejoGBQUlJGRUV1dbR7Ny8vr3bv39u3bxX/P0pmvVHp4eAQGBmZkZNTV1Vk2ZTQa\n9Xr9iBEjnvqr3dzcnveapvU8Nu5UTk7O22+/XVpaahkdM2aMEOL+/ftWhixrysrKnii1ACBn\nnLEDOpF+/fr5+Pjs3LlzyJAhPXr0+O6773Jycv7zn//k5OScOXMmODh47dq10dHRr7322vz5\n8x89erRx40Z3d/eEhAQhhPmWgpSUlEGDBsXGxq5bty4qKmrChAlz5861s7M7cuTIDz/8sHbt\nWicnp6f+6iFDhmRmZhYVFf31/gkrrOSxcad8fX2PHTt2/fr1+fPn+/r6lpeXf/HFF05OTjEx\nMQaD4e+GzFt+/PjxjRs3pk6d+g8PNwC0P6lvywXw73ricSfZ2dkjRozQ6/U9e/ZMSEiorKw8\nevSoq6trt27dbty4YTKZMjMzQ0JC9Hq9u7t7TEzMzZs3zW8sKCgYOnSoVqu1PGTk5MmToaGh\nBoPB3t5+6NChu3btsvzSUaNG+fn5tY5x5swZIcTu3bsta/7ucSdP+Ls8rR93Yn2ncnNzY2Ji\n3N3dtVqtl5dXTEzM5cuXzW+0MmQymY4dOyaESE9Pf57jDQBSUple4JsfAcBGTU1NAQEBPj4+\n5obXIUyZMuXHH3+8c+dO165dpc4CADbhM3YA2oNGo1m6dOnZs2df/Dtn20deXt6hQ4cWLlxI\nqwPQgXDGDkA7aWlpiYyMLCsru3TpkoODg9RxrGlpaRkzZkxFRUVWVpbMowJAa5yxA9BO1Gp1\nenr6gwcP5s6dK3WWZ1i+fPnly5e//fZbWh2AjoUzdgAAAArBGTsAAACFoNgBAAAoBMUOAABA\nISh2AAAACkGxAwAAUAiKHQAAgEJQ7AAAABTi/wDu5+CPw3DqJwAAAABJRU5ErkJggg=="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Histogram of Age”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dC5xVZb3w8WcYNsOMDoQCIsIM\naLyWZTOiBqUoBmGKSidLxC6MYBcBRcNeTmmAGmrwasdjnE56LNOTpzCx8mQWkXa8ZCl1SkVl\n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\npIWQmPNHSFoIiTl/hKSFkJjzR0haCIk5f4SkhZCY80dIWgiJOX+EpIWQmPNHSFoIiTl/hKSF\nkJjzR0haCIk5f4SkhZCY80dIWgiJOX+EpIWQmPNHSFoIiTl/hKSFkJjzR0haCIk5f4SkhZCY\n80dIWgiJOX+EpIWQmPNHSFoIiTl/hKSFkJjzR0haCIk5f4SkhZCY80dIWgiJOX+EpIWQmPNH\nSFoIiTl/uiHdNlXTbWKbVx8hMRf3nG5ITUddquWoOO7hCIm5uOe0Q0ryQ0VCYi7uOULSQkjM\n+ZtxXouW8wipOEJiLusIpYmQiiMk5nJzJ/9QywhCKo6QmAtjjpAi+kIzZ/ccIUX0hWbO7jlC\niugLzZzdc4QU0ReaObvnCCmiLzRzds8RUkRfaObsniu7kDo2rV2zZt3m/UwREnPRzr1/zCf0\n3GOw+fsKHlLLouH5nzfXXbXTb46QmIt4rv7jWuol77kCh7RlrBrXtHTFiitmjVQNLT6DhMRc\nMudEHwIGDmluZnXnUfuqioU+g4TEXDLnkhHSiDk9xzNH+wwSEnPJnEtGSJnlPcfLBvR55wvD\nhnSrVW0en2JuZpCWfswxF8JcZm7QzV9E4JDqz+k5njGmzzvffmBtt1/+p9en2LJWzw9/yBxz\n8nNrtwTd/EUEDmlhxcrd+aMdS9RiqeUA5SlwSK3jVe2UpgXzZ0+uUZO2Sy4JKD/Bf46054bG\nyuyPkTITb24XXBBQjowuEdq1cf36Zq/n5IAUCf9aOyAFCAkQQEiAAEICBBASIICQAAGEBAgg\nJEAAIQECCAkQQEiAAEICBBASIICQAAGEBAggJEAAIQEC4gxpou4f4QXCMFFwM8cZ0nlnPpFo\nZ7I+I4lf33mCmznOkJri+PMbJWB9ZlK1PkLyxvrMpGp9hOSN9ZlJ1foIyRvrM5Oq9RGSN9Zn\nJlXrIyRvrM9MqtZHSN5Yn5lUrY+QvLE+M6laHyF5Y31mUrU+QvLG+sykan1xhvS5z8V4cg2s\nz0yq1hdnSC0tMZ5cA+szk6r18c8oAAGEBAggJEAAIQECCAkQQEiAAEICBBASIICQAAGEBAgg\nJEAAIQECCAkQQEiAAEICBBASICC+kFoX1mcOnbsltvN7a1lUN2DMjN9mDxO7yEvV3OxNMtd3\n30kHDj7lgexRItf3zKdG9B/60d9lD+XWF1tIe8ars5fPyYxN3r+ifHOMmv7VT/Yf+OcEL/Lx\nylxIyVzfd9QRV1w2bMAjCV3fU7UHLbn96hH914muL7aQblBfd1/+UC2KawGe5qub3Jd3q9OT\nu8i9jQ25kBK5vlcPPGaH4zQfOC+h6ztP/dp9+Sc1WXR9sYXUWLs7e/PO4R1xrcDLJVPa3Jcd\n1fXJXeR1FT/PhZTI9a1U92dvsktK5PomqOx/X2fQGNH1xRXSrsopudsmtSmmFezH7swJiV3k\n89UXtmZDSub6Tq1uc3Zvyx4lc32z1ZPuy9f7nSa6vrhC2qjyv1RsqVob0wr240b3AV5SFznl\n0L/nQkrm+uqP+sMJFeqI7yZ1fRuGNDz0yh+m1Dwmur64Qlqv5uduV6o1Ma3A34MDTtyb1EV+\nV/3IyYWUzPXV1h+66Ec31qnvJ3R9zrNHKaXqHpX9+sUX0oLc7Qp1T0wr8HVn1fg3k7rIVw86\nw+kKKYnrq1Lfc19uOXBEezLXt2Hs6OvvvfU9g9eKfv3iCqlZzc7dXqF+FdMKfHQsUR/5h5PU\nRZ574F87Q0rm+g6ufCt78wn152Sub2LNy+7Ltw47rE1yfXGFtKf/5NztLPXXmFbgrWOOuqg9\ne5DIRd6nvvrSSy89rWa9tC2R63OOrcw9KzZPPZLI9W2vOCV3+xn1lOT6Ynv6e0JN9n+33h45\nOq4FeFuoruk8SuIiF6kuixO5PmeBeix7M01tTuT6XlMfyN2eo56QXF9sId2slrkvv6WujGsB\nnu5WC7sOk7jIDfdm/UBNu/eZRK7PeaLiQ7sd5/F+70vm188Zm3nOfdl60KDdkuuLLaT2SWrG\nledWHP1WXAvwdIS6aHFOS4IXmfseKaHru0Q1XvnZ6gEPJHR9a/odfPl3lo9Vq0TXF99Fq9sv\nq88cNv/N2M7vqfuh04sJXmQ+pGSur+PfGwYOPv332cNEru/Rjw7rP2Tqz7KHcuvjn1EAAggJ\nEEBIgABCAgQQEiCAkAABhAQIICRAACEBAggJEEBIgABCAgQQEiCAkAABhAQIICRAACEBAggJ\nEEBIgABCAgQQEiCAkAABhAQIICRAACEBAggJEEBIgABCAgQQEiCAkAABhAQIICRAACEBAggJ\nEEBIZWaRGrwz7jVgX4RUXvYM7ae+F/cisC9CKi93qnkVJ8a9COyLkMrLZLVxktqQO/zv46sP\nuXjnqGPcw63z6jJDZ/w+3qWlGyGVlefUB51b1Bezh7+pHHHlqslnDZ7gOK/VD158xzWjqh6M\ne3kpRkhlZZG6xflHzdA97uGH1eOO036KckO6sL976GyuPS7u5aUYIZWT3UOrtznOp9UP3OOB\n78q+5X43pI6h41/JOlVtj3l9KUZI5eT76lPuy1+rqY7Tqs7IvuUfbkhbVZenY15fihFSOTlZ\n/Udzc/PGQyo2Oc+rc3JvqpzgNKvGn+e1xry+FCOkMvJs913PV5y/qrOyb3ord4/UGPfKQEhl\n5Ivqgruy7qg8dO+efg3ZN/06+2TD0IG5u6LX4l1duhFS+dh9cFVnK2erHzvvr3jGcdpPzT1r\n595DuR2NOCPW5aUbIZWP76vzO48eVNOdu9TYld+eNLvKDenVOnX+bdfUZX4Z6/LSjZDKx0nq\nf7sOj658ybn1yAH1l7cN+KD76isXju7/jrN+F+PaUo+Qytu2/HMOiBshlavvnPyE+/JGtSLu\nhSCLkMrVY1UjrrxlXv86fnaUCIRUth4+bXjmsDl/i3sZyCEkQAAhAQIICRBASIAAQgIEEBIg\ngJAAAYQECCAkQAAhAQIICRBASIAAQgIEEBIggJAAAYQECCAkQAAhAQIICRBASIAAQgIEEBIg\ngJAAAYQECCAkQAAhAQIICRDw/wGFHKK2fi3dxwAAAABJRU5ErkJggg=="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 18 To demonstrate various types of basic plots in R such as boxplot, histogram, bar plot, line chart, and scatter plot."
      ],
      "metadata": {
        "id": "Gc9g1Rxfd4FW"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "set.seed(1)\n",
        "x <- rnorm(100)\n",
        "y <- x*2 + rnorm(100, sd = 0.5)\n",
        "boxplot(x, main = \"Boxplot of x\", ylab = \"x values\")\n",
        "hist(x, main = \"Histogram of x\", xlab = \"x\", breaks = 15)\n",
        "counts <- table(sample(c(\"A\",\"B\",\"C\"), 200, replace = TRUE))\n",
        "barplot(counts, main = \"Bar plot of categories\", ylab = \"Frequency\")\n",
        "time <- 1:30\n",
        "values <- cumsum(rnorm(30))\n",
        "plot(time, values, type = \"l\", main = \"Line chart\", xlab = \"Time\", ylab = \"Value\")\n",
        "plot(x, y, main = \"Scatter plot x vs y\", xlab = \"x\", ylab = \"y\")\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 1000
        },
        "id": "bf9U-1rUd9kZ",
        "outputId": "cbc1c66b-7c91-44e3-fd2e-053701134a70"
      },
      "execution_count": 20,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Boxplot of x”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAAC0FBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJycp\nKSkqKiorKyssLCwtLS0vLy8wMDAxMTEyMjIzMzM0NDQ1NTU3Nzc4ODg5OTk7Ozs8PDw9PT0+\nPj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tMTExNTU1OTk5PT09Q\nUFBRUVFSUlJTU1NUVFRWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1fX19gYGBhYWFiYmJjY2Nk\nZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29wcHBxcXFycnJzc3N0dHR1dXV3\nd3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGCgoKDg4OEhISFhYWGhoaHh4eJiYmK\nioqLi4uMjIyNjY2Ojo6Pj4+QkJCSkpKTk5OUlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJyd\nnZ2enp6fn5+hoaGioqKjo6OkpKSlpaWmpqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+w\nsLCxsbGysrK2tra3t7e4uLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTF\nxcXHx8fIyMjJycnLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ\n2dna2trb29vc3Nzd3d3e3t7f39/h4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs\n7Ozt7e3u7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+\n/v7///8z6WN9AAAACXBIWXMAABJ0AAASdAHeZh94AAAaZ0lEQVR4nO3djZ+lZXnY8Xthh+Ft\nxYX6hgJqjLZ5WRQMLyapxCikEDGxRssqURQaMFVB20oiVSoNJAYjxmrIK0ZNa4xBAi1iFBus\niW0llgaLqLgURVnWZc+/0HNmdmaeObvO7uxc13PvPPf3+/nIeXbPOc955J7fZ86551q2jIA1\nK7UvAIZASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBA\nSBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBA\nSBBASBBASBBASBBASOvPn5Yyu/pnffi5hx/xzO/FXw1zhFTH75Z5G4877e33r/K5BxTSX8+9\n3HdW/Tz2j5DqWAhp4pg7VvfcHxDS/YeW//GDn3TR+HWuu3HH6l6J/SakOiYhvfaSSy75F/94\nfHDSY6t67g8I6bfKSiG9pJSLVneJrIaQ6piE9ODc0WvHR3eu6rk/IKTTVwzphaW8aVWvwqoI\nqY6lkG4bH90yOXjonc/fPPPEF31w5/j45g2l/NX4dtuTSrls9IFS/snoptMft+msuTeBiyF1\nn3HO/NvEy5ZeonvvRbvfRe7+jLT89AQQUh1LIX1kfPQP49u7nrr7i/20B8a/+tVSnvXIaHRh\nKT/6yOgPSjn+mvm9iU+OlkJa9ow9Qlp271RIy09PACHVsRDSt299Vinnjw+2jb/un/E7/+ny\njaWcM/7l9h8r5a2jWzeU2S+MRjeNy5m94I/fdfT449SOxZCWP+Pv/vP4jH94+/9eeIHl9/79\n7aeU8s9vv33hw9iy0xNASHV0du0Ou+C749/49VIe93/Ht7+/+yPTf58tGz/77FKuHc2VU14z\nvv2T8e0nF0OaesbXyrLPSNPnm/qM1D09AYRURyekU67+1vg3fryUrZM7dm4u5R2Tg2tLObKU\ns3aN5kO6a3z7/U2l/NpiSFPPmApp+nzTmw2d0xNASHUsbH+//rzHlfKkO0a7xm/BfmPuntNK\necXkdtdZ44ccO/mmMilnZu5N2cmlvHohpOlnLA9pj/NNh9Q5PQGEVMfSZsN3Ti/l6Y89PP71\nDXO/Hn+B/9zcwfvHv/XiuaNxOY+fOzijlJcvhDT9jOUh7XG+Pba/l05PACHVsRTS6BPjwy9O\nvoNcM/fL55fyysntfcdO3vfdODlc3O8+ee6z0tJ3pO4z9vyOtOx80yF1Tk8AIdXRCemm8eFn\nR1t297Nj/Dno308OXlzKuRvKMZOd8clnpLvHt98/eu7zzu6upp4x9Rlp+nzTIXVOTwAh1bEU\n0vfOLGXjA6N3lHLUvaO5d1wb/tf49r2lPHv7L5fyT3fNh3TF+Pc+WuZ+jro7pKln3D++8/al\nF5g+31RI3dMTQEh1LGw2XPyLx42PXjUaPfi0Up51/UffMlvKL4/v//JRpdw6N3lw3Vw5G2eu\nvPW944c+Z+diSFPP2DlTypkf/uTCC0zdOxXSstMTQEh1dKe/y0//v1FnEuH8R8ZV/MTc/tzo\nj0o5/O8m5Wy+Yu6+wyczQntMNpw/N53wksnhOYuvMHXvspCWn54AQqpjMaTZp7/sI/Nvrx76\nd6ceM/OUl358cnxVKU+Y/HRp9LOlPHfHuJyjRjdsOXzzuXNzCEuzdp1njEZf/fnHH/6Mdy69\nxPJ7l4W0/PSp/0dbIaR14MD+SCx9EtI6IKSDn5DWASEd/IS0Dgjp4CekdUBIBz8hQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQYAeQrrrTlhX7lr9V3l+\nSJ8rsM58btVf5vkh3VEeTX8NCPRouWPVzxESTBESBBASBBASBBASBBASBBASBBASBBASBBAS\nBBASBBASBBASBBASBBASBBASBBASBBASBBASBBASBBDS+nLfzWtz001rPMF9tf8NHKSEtL5c\ntXltZmfXeIKrav8bOEgJqS1bt9a+goESUluElERIbRFSEiG1RUhJhNSWK6+sfQUDJSQIICQI\nICQIIKS23GcyIYeQ2nLhhbWvYKCE1Bbb30mE1BYhJRFSW4SUREhtEVISIbXFZEMSIUEAIUEA\nIUEAIbXFZEMSIbXFZEMSIbXF9ncSIbVFSEmE1BYhJRFSW4SUREhtMdmQREgQQEgQQEgQQEht\nMdmQREhtMdmQREhtsf2dREhtEVISIbVFSEmE1BYhJRFSW0w2JBESBBASBBASBBBSW0w2JBFS\nW0w2JBFSW2x/JxFSW4SUREhtEVISIbVFSEmqhbTtnhXuFFIWkw1J+g3pC2efdMb1O+cOL1/p\nLEJinek1pE/PliNnyk9umxwLiSHpNaRzZv5s1/ZrZ059eCQkhqXXkE541eSftxx29s69hLT9\ngzcsepOQkphsSNJrSDNvn7u5sVy6l5Du/ZFnLnpC+c6BvgYrMtmQpNeQnnbu/O1by7tXfmv3\nPiElsf2dpNeQLt3wnh2T210XlDf+ipBqEFKSXkN64MRy1tzBrktLEVINQkrS78+RvnnxG3cf\nffSHhFSDkJIcnCNCQspisiGJkCCAkCCAkCCAkNpisiGJkNpisiGJkNpi+zuJkNoipCRCaouQ\nkgipLUJKIqS2mGxIIiQIICQIICQIIKS2mGxIIqS2mGxIIqS22P5OIqS2CCmJkNoipCRCaouQ\nkgipLSYbkggJAggJAggJAgipLSYbkgipLSYbkgipLba/kwipLUJKIqS2CCmJkNoipCRCaovJ\nhiRCggBCggBCggBCaovJhiRCaovJhiRCaovt7yRCaouQkgipLUJKIqS2CCmJkNpisiGJkCCA\nkCCAkCCAkNpisiGJkNpisiGJkNpi+zuJkNoipCRCaouQkgipLUJKIqS2mGxIIiQIICQIICQI\nIKS2mGxIIqS2mGxIIqS22P5OIqS2CCmJkNoipCRCaouQkgipLSYbkggJAggJAggJAgipLSYb\nkgipLSYbkgipLba/kwipLUJKIqS2CCmJkNoipCRCaovJhiRCggBCggBCggBCaovJhiRCaovJ\nhiRCaovt7yRCaouQkgipLUJKIqS2CCmJkNpisiGJkCCAkCCAkCCAkNpisiGJkNpisiGJkNpi\n+zuJkNoipCRCaouQkgipLUJKIqS2mGxIIiQIICQIICQIIKS2mGxIIqS2mGxIIqS22P5OIqS2\nCCmJkNoipCRCaouQkgipLSYbkggJAggJAggJAgipLSYbkgipLSYbkgipLba/kwipLUJKIqS2\nCCmJkNoipCRCaovJhiRCggBCggBCggDVQnrg7hXuFFIWkw1JqoV0+UpnEVIWkw1JhNQW299J\nhNQWISXpNaTndTx5j7N84c5FbxNSEiEl6TWkQw6ZXXTo9Fn+/tDSIaQcQkrSa0iXb1raqtvz\nrd13ty26VkhJTDYk6TWkHSefsmPh2GckhqTfzYYvHfHmhUMhMSQ979o99K2Fo9uuXuFhQmKd\nMSLUFpMNSYTUFpMNSYTUFtvfSYTUFiElEVJbhJRESG0RUhIhtcVkQxIhQQAhQQAhQQAhtcVk\nQxIhtcVkQxIhtcX2dxIhtUVISYTUFiElEVJbhJRESG0x2ZBESBBASBBASBBASG0x2ZBESG0x\n2ZBESG2x/Z1ESG0RUhIhtUVISYTUFiElEVJbTDYkERIEEBIEEBIEEFJbTDYkEVJbTDYkEVK/\ntn+lrpe9rPIFbK+9AkmE1K9LSuMuqb0CSYTUr60/84mqPv7xuq//M0P9gbCQ+rX1vC827Twh\n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\npNorkERI/RJS7RVIIqR+Can2CiQRUr+EVHsFkgipX0KqvQJJhNQvIdVegSRC6peQaq9AEiH1\nS0i1VyCJkPolpNorkERI/RJS7RVIIqR+Can2CiQRUr+EVHsFkgipX0KqvQJJhNQvIdVegSRC\n6peQaq9AEiH1S0i1VyCJkPolpNorkERI/RJS7RVIIqR+Can2CiQRUr+EVHsFkgipX0KqvQJJ\nhNQvIdVegSRC6peQaq9AEiH1S0i1VyCJkPolpNorkERI/RJS7RVIIqR+Can2CiQRUr+2Hv+i\nqk4+ue7rHy+kJUI6cH/+urqe/ezKF/DntVcgiZDacuGFta9goITUlvvuq30FAyUkCCAkCCAk\nCCCktlx5Ze0rGCghtWXrUH+OU5uQ2iKkJEJqi5CSCKktQkoipLaYbEgipLaYbEgiJAggJAgg\nJAggpLaYbEgipLbY/k4ipLYIKYmQ2iKkJEJqi5CSCKktJhuSCKktJhuSCAkCCAkCCAkCCKkt\nJhuSCKkttr+TCKktQkoipLYIKYmQ2iKkJEJqi8mGJEJqi8mGJEKCAEKCAEKCAEJqi8mGJEJq\ni+3vJEJqi5CSCKktQkoipLYIKYmQ2mKyIYmQ2mKyIYmQIICQIICQIICQ2mKyIYmQ2mL7O4mQ\n2iKkJEJqi5CSCKktQkoipLaYbEhSLaQH7l7hTiFlMdmQpFpIl690FiGxzggJAggJAvQa0vM6\nniykGkw2JOk1pEMOmV10qJBqsP2dpNeQLt+0tFXnrV0VQkrSa0g7Tj5lx8KxkKoQUpJ+Nxu+\ndMSbFw73COmrz1/6AHWikJIIKUnPu3YPfWvh6Larp+7a/oEbFr1SSElMNiQxItQWkw1JhAQB\naoR0zen7eoSQWGdqhHTRPk8gJNYZIbXFZEMSIbXF9ncSIbVFSElqhPTgvft6hJCyCCmJ7e+2\nCCmJkNpisiGJkNpisiGJkCCAkCCAkCCAkNpisiGJkNpi+zuJkNoipCRCaouQkgipLUJKIqS2\nmGxIIqS2mGxIIiQIICQIICQIIKS2mGxIIqS22P5OIqS2CCmJkNoipCRCaouQkgipLSYbkgip\nLSYbkggJAggJAggJAgipLSYbkgipLba/kwipLUJKIqS2CCmJkNoipCRCaovJhiRCaovJhiRC\nggBCggBCggBCaovJhiRCaovt7yRCaouQkgipLUJKIqS2CCmJkNpisiGJkNpisiGJkCCAkCCA\nkCCAkNpisiGJkNpi+zuJkNoipCRCaouQkgipLUJKIqS2mGxIIqS2mGxIIiQIICQIICQIIKS2\nmGxIIqS22P5OIqS2CCmJkNoipCRCaouQkgipLSYbkgipLSYbkggJAggJAggJAgipLSYbkgip\nLba/kwipLUJKIqS2CCmJkNoipCRCaovJhiRCaovJhiRCggBCggBCggBCaovJhiRCaovt7yRC\naouQkgipLUJKIqS2CCmJkNpisiGJkNpisiGJkCCAkCCAkCCAkNpisiGJkNpi+zuJkNoipCRC\naouQkgipLUJKIqS2mGxIIqS2mGxIIiQIICQIICQIIKS2mGxIIqS22P5OIqS2CCmJkNoipCRC\naouQkgipLSYbkgipLSYbkggJAggJAggJAlQLads9K9wppCwmG5L0G9IXzj7pjOt3zh1evtJZ\nhJTF9neSXkP69Gw5cqb85LbJsZCqEFKSXkM6Z+bPdm2/dubUh0dCqkRISXoN6YRXTf55y2Fn\n7xRSJUJK0mtIM2+fu7mxXCqkSkw2JOk1pKedO3/71vJuIdVhsiFJryFduuE9Oya3uy4ob/wV\nITEgvYb0wInlrLmDXZeWMn2WbRe/btGZQmJ96ffnSN+8+I27jz76QyuF9JLy6AG/BlRwcI4I\n3SGkJCYbkgipLba/k9QI6ZrT9/UIIWURUpIaIV20zxMIKYuQkgipLUJKIqS2mGxIIqS2mGxI\nUiOkB+/d1yOExDpj+xsCCAkCCKktJhuSCKkttr+TCKktQkoipLYIKYmQ2iKkJEJqi8mGJEJq\ni8mGJEKCAEKCAEKCAEJqi8mGJEJqi+3vJEJqi5CSCKktQkoipLYIKYmQ1perNq/N7OwaT3BV\n7X8DBykhrS/33bw2N920xhOYjNg7IUEAIUEAIUEAIUEAIUEAIUEAIUEAIUEAIUEAIUEAIUEA\nIUEAIUEAIUEAIUEAIUEAIUEAIUEAIUEAIUEAIUGAgzOkzxVYZz636i/z/JBGd90J68pdq/8q\n7yEkGD4hQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAh\nQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQQAhQYD/D9ifhIQtDIv4AAAA\nAElFTkSuQmCC"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Histogram of x”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAAC/VBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGCgoKD\ng4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OUlJSV\nlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWmpqan\np6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4uLi5\nubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnKysrL\ny8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc3Nzd\n3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u7u7v\n7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7///9B8z1b\nAAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dDZxVZZ3A8WeAywgukqaIyJsvaFtr\nIGi+UhbmC4hYVobWMoLrGyqmLVkmvqQoJFpGlq7ZalmS2PaybSuhlqZlklsabY7Yhkr4BhmI\n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\nrkJggg=="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Bar plot of categories”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dC5yUZb3A8WdZhoXFlUhFRLkm\nx7I6INrRUoyEYxc1TI8SZbJCXiGpqMgiIYwsKD1dqNSsjOwCyjnVOVlxUMusjsqxqxUrVmjk\nrSUDua47Z2b+/52Zd9l92ec/zzr7DL/v59POszvP+76P0/ycmZ3XHZcFUDFX7QUAtYCQgAAI\nCQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCA\nAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiA\nkIAACAkIgJCAAAgJCICQgAAICQiAkKprjXMN/lutnjRw0Lgd4VdTxrawAxchVewmJ/of8sqr\nH/fd2HR//XnheNu8t/NBSH4IqWIdIeUNuddz427ur4/Xu991v9GluQNd/9U9+997+m5StVx/\n/WeMmx6QCKli+ZAunjt37ttekhuMfs5v425C+rRLK+D1zl3ao72n7wYBEVLF8iFtLYwuzo0e\n8Nu4m5BOTi1gqnMLerT39N0gIEKqWCmku3Oj9bnL9m+cflj/pn/5dFtufLNzp+698tBhHbO/\n6Nyx2W+dfHDTtMKzwGJIzyw7cWhm2Olfym9zhjxPnF86Rvm1l+rTyNJrpMfe9ZLGgccufDKb\nPHbZbn5/6dENTSd8am9h+peOb3zhGfc/krtqZ+d9l5ZbXFj5pntvmHpY/8NO+OhT4W/F2BFS\nxUoh3ZYbbc5dvlXv6me2Z7Nfd+6fP+lcfcfsrzk3YoX8cuIH2VJIvzhSt3nl012ElLh2n5Du\nHCI/OPxXyWOXdnP7QBmeli/nXYVhw8rcl332XVpux8LKN90zRaeOe7jXb9XYEFLFOkL6x11H\nO3dObvBd5/p97tc393dudaGUMSMzE4/pmP2t3B20YdY3PnpQ7vXUnmJIrbl789jP/+fC3DZn\nZLO//XZul7fe80jHNslrH77nBOfefM89Ha/G/vpC515929cmOnfM3sSxi7t5ZJBz7/3D/a92\n7qps9r7cDyfetOpVB0ndyX2XlqsLS2z6eede/I2ffv/c3PGev5s3EoRUsbLf2g2Y9WzuB589\n44z8g8kbnbuwcM904x8tzc5/Pzt3+c3c5Q+KIX3YuYP/krtcJa+y/uoSL246XdvpNdJVzh2a\nO+yTubv8bcljd+xmnnNTchdPHeSadmYvce4FuceeHaMlpE77Li5XF5bYtNm5T+a+2TNz3sc8\nf6dS+wipYmUhnXDt30o/f4dzp8s98+tls/Pf/yJ3ubfJuSXF++sE55rz17YNdW7pPiF1urZT\nSC9z7u35y3vvuKMleeyO3bzIuQ/uzDnVuf/JHuvc2/JTPiQhddp3cbm6sMSmVzo36qveb5Ud\nGAipYh2//r5s+sG51yn5XyGsmz6uoRDWVLlnlt/3ct9nCv86P865izrur+395d/12ewrnZvZ\nOaTO1yZDaq937trS/suPrbtp71dK/VPZRuc+mp94WyGkzvsuLlcXltj0wcb85Yvm3N4W/laM\nHSFVrPTLhm0n515hPJf9XO4Hg18y4dCOkOrLnwflvn9BYXCKczM67q/bc1vcUPjpNOfO7BxS\n52uTIeWv/ULxu8SxdTfbSzG4xe2FJHK+Xwip876Lyy0trLhpNnvXS2U45qeBb8P4EVLFSiFl\n78gNf70t9+/tt+zIZq/oCCnxRlHx++MKr5VKj0grCj890bm3dvWIVH5tMqTn+nU8puQkj93x\niJR7zPr34vwGfQBbU3xEKt93cXm6sMSmue9/uvR1+d8RHra9stus9hBSxcpC+lZu+L8/zn15\nMFu4u3cdksu/lNl7UMdrkvzVE6WQ7J7cK6eP7/MaqdO1nV4jHaOvkW695po7ksfu2M0/lf8q\n/Wh9jbRIXiN12nenkJKbirZv515Ofa+CG6wmEVLFSiHtmOxc/6fX5b6/L5v9be6R4tSuQ3p/\n7vL23OWdxauX5p6Q5X9XdqNzdX/IZh/PXXlPaZtO13YK6V3OHfr3bLY1d/e+KXnsjt28w7kR\nz+YKeMtF738se4FzQ57KPXaNlJA67btzSOWb7vho8xsLT/tOd+4/eunGjBYhVazjlw1XnH9I\nbnRB9i+5e/FZv/7OkblHioN/9kQXIfXPLL7rc7m5x7QV769bj3Lu6JW3v7dBHl3aMs5NXv2D\njm06XdsppD/nHktO/Natxzs3anvy2B272TTIuZP/+wfnOPfStuz63CL/+Ss3v2KwhNRp351D\nSmyae/Q693sP/PjDGdfwRG/fqrEhpIqVn/3tXvP3wr/Fc0b8cUT+FXoXIQ19f2HCwHuzXZzZ\ncE7htJ3X54dnFDfqdG2nc+3+q1GuHP6LTscu7maN/CLPHZl/ojerMGz8uJ5ukdx355ASm/76\nKJ3a7+beujGjRUgVK4bUMObc29pzP9jz8WMHHfn2v2TXHdP/qG92EdLg7A0TBw594y/1Wz3X\n7iOvGJI54k3fkVmPnf2CgWOXlbZKXtv5pNVHLh8/aNBLr3qq87FLu3lo9tiGxpd9sDU/+7kV\nxzQM+7dffa/LI+8TUmLTx6854fBM44sv+WWYW66WENLzrM/8B3O35B64qr2GGkJIz7Oqh/TQ\ntVe8OX8q9xudO7uqC6kthPQ8q3pILXW5gu7+yTtzz0V/WNWF1BZCep5VPaTsko7XdB+q7jpq\nCyE9z6ofUnb9vx2VaRg94+4qL6O2EBIQACEBARASEAAhAQEQEhAAIQEBEBIQACEBARASEAAh\nAQEQEhAAIQEBEBIQACEBARASEAAhAQEQEhAAIQEBEBIQACEBARASEAAhAQEQEhAAIQEBEBIQ\nACEBARASEAAhAQEQEhAAIQEBEBIQACEBARASEAAhAQFUM6TWByK2uYo3HPqeaoZ0iYvYsVW8\n4dD3VDOk5tfdGa0FR1fxhkPfQ0g2hIQEQrIhJCQQkg0hIYGQbAgJCYRkQ0hIICQbQkICIdkQ\nEhIIyYaQkEBINoSEBEKyISQkEJINISGBkGwICQmEZENISCAkG0JCAiHZEBISCMmGkJBASDaE\nhARCsiEkJBCSDSEhgZBsCAkJhGRDSEggJBtCQgIh2RASEgjJhpCQQEg2hIQEQrIhJCQQkg0h\nIYGQbAgJCZWE1L5p3dq16+2fb0JIqBn2kFoXDJMPOBm1dIdtD4SEmmEOactYN7558fLli2aO\ncBNaTbsgJNQMc0hzMqt11Laybr5pF4SEmmEOafjs0njGSNMuCAk1wxxSZllpvGSAaReEhJph\nDmn0+aXx9DGmXRASaoY5pPl1K3bJaPvVbqFpF4SEmmEOaesk1zS1ed7cWVMa3eRtpl0QEmqG\n/X2k3ddNrM+/jZQ56cY22x4ICTWjolOEdm7csKFldxdX7F27uugbn+huc0JCzTCH9Me/pVz5\np/Hjio50XaWWR0ioGeaQ3MCPdBdI0r2EhNpnD2lM/Uvu6slEQsIBwB7SwvuPc1Pv2f9EQsIB\noIKQsm3XH+ZOveXv+5lISDgAVBJSNrv92kNc/SvmfOTTKRMJCQeAykLKZp9dddZg59L2Qkg4\nAFQaUs7uB7/5uZSJhIQDQICQ9oOQcAAwh9SwqIcTCQkHgN7/K0KEhAMAIdkQEhIIyYaQkEBI\nNoSEBEKyISQkEJINISGBkGwICQmEZENISCAkG0JCAiHZEBISCMmGkJBASDaEhARCsiEkJBCS\nDSEhgZBsCAkJhGRDSEggJBtCQgIh2RASEgjJhpCQQEg2hIQEQrIhJCQQkg0hIYGQbAgJCYRk\nQ0hIICQbQkICIdkQEhIIyYaQkEBINoSEBEKyISQkEJINISGBkGwICQmEZENISCAkG0JCAiHZ\nEBISCMmGkJBASDaEhARCsiEkJBCSDSEhgZBsCEk8uDpijwa8IQjJhpDEMQ1N0eo/J+ANQUg2\nhCSOXlDt/yfsXtcc8IYgJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQh\nKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQh\nKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJKqJKT2TevWrl2/eT+z\nCKmWEZKyh9S6YJgrGLV0R9o8QqplhKTMIW0Z68Y3L16+fNHMEW5Ca8rEAzmkpcdHbGlP/gkJ\nSZlDmpNZraO2lXXzUyYeyCGdNuniaE06rSf/hISkzCENn10azxiZMvGADunCaq/T7kJC8mEO\nKbOsNF4yIGUiIcWJkLyYQxp9fmk8fUzKREKKEyF5MYc0v27FLhltv9otTJlISHEiJC/mkLZO\nck1Tm+fNnTWl0U3eljKRkOJESF7s7yPtvm5iff5tpMxJN7alzSOkOBGSl4pOEdq5ccOGlq4y\naZ17SdF0QooSIXmp9Fy7tl/d28U5Qn+78Lyi0wgpSoTkxR7SvXNzX1YdnntyN+FHqfMIKUqE\n5MUc0l0DDmrPrnEHnXfFv/ZreCBlIiHFiZC8mEOaMqwlmx07ektu+PNBZ6VMJKQ4EZIXc0gH\nvyeb/bv7VGF88QtSJhJSnAjJizmkwR/KZnfV3V4Yf3hgykRCihMheTGHdPL4Z7PZV70nP9w1\nYULKREKKEyF5MYf0XTfpB3s3HHHLs3t+fpq7IWUiIcWJkLzYf/1902A36NjRrr7e1b27PWUe\nIcWJkLxU8Ibs4yteO7qp4ZDjr9yQOo2Q4kRIXvgrQjaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCS\nICRFSDaEJAhJVRJS+6Z1a9eu37yfWYQUJ0LyYg+pdcEwVzBq6Y60eYQUJ0LyYg5py1g3vnnx\n8uWLZo5wE1pTJhJSnAjJizmkOZnVOmpbWTc/ZSIhxYmQvJhDGj67NJ4xMmUiIcWJkLyYQ8os\nK42XDEiZSEhxIiQv5pBGn18aTx+TMpGQ4kRIXswhza9bsUtG2692C1MmElKcCMmLOaStk1zT\n1OZ5c2dNaXSTt6VMJKQ4EZIX+/tIu6+bWJ9/Gylz0o1tafMIKU6E5KWiU4R2btywoaWrTDa/\neFzRCLerm80JqS8jJC+Vnmu3+747H9n3p3tuuaHofTwiRYmQvJhDuubO/NcvDM09uTv+wbSJ\nPLWLEyF5MYdU+E3df7mGN116shvycMpEQooTIXmpLKTxQx7Kfb297qKUiYQUJ0LyUlFIT7oP\nFMZnH5kykZDiREheKgpps1tVGC/KpEwkpDgRkpeKQmobcm1hPPuFKRMJKU6E5MUe0sz7W566\n6uhnc8PfDT4rZSIhxYmQvNhDErdls7cO7ndfykRCihMheTGH9OXrF8+fdfaU9dnsyiO/mzaR\nkOJESF4C/BWhbc+lXk1IcSIkL/w5LhtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSk\nCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSk\nCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSk\nCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSk\nCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSk\nCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSkCMmGkAQhKUKyISRBSIqQbAhJEJIiJBtCEoSk\nCMmGkAQhKUKyISRBSKo8pJO+8PeAe+5ASHEiJC/lIfV3g2b+8LmAOy8gpDgRkpfykJ6+YWq9\nG/nBloC7zxJSrAjJS6fXSE9+/jX93Clf/EfAIxBSnAjJy76/bNhy/QTXeNkfgh2BkOJESF72\nCWnHmnMHuVGZzJL2QEcgpDgRkpdOIf3k7Qe7QW+9K7v5XLc40BEIKU6E5KU8pM0fGe/ccZ/d\nmh+3TxsW6AiEFCdC8lIeUj835LIHOr75bF2gIxBSnAjJS3lIk7+yo/RNy9pARyCkOBGSl+Rr\npN88lf/yfwH3T0ixIiQv5SHtme3uyl18xjW3BTwCIcWJkLyUh/RJd8YjuYvfz3D/HvAIhBQn\nQvJSHtLLz9TBG3p0L8m2b1q3du36zfuZRUhxIiQv5SEN+qQOlmd6sGXrgmGuYNTSHWnzCClO\nhOSlPKTD36GDKw7f/4ZbxrrxzYuXL180c4Sb0JoykZDiREheykOa3fjf+Ys9N/Z/2/43nJNZ\nraO2lXXzUyYSUpwIyUt5SFuOcKP+9cxTXuiO+PP+Nxw+uzSeMTJlIiHFiZC8JN5HevyyQ3Kv\neQ67+LEebJhZVhovGZAykZDiREheOp202v6Xh7f3bMPR55fG08ekTCSkOBGSF/MfP5lft2KX\njLZf7RamTCSkOBGSl/KQ2lefOfGlYv8bbp3kmqY2z5s7a0qjm7wtZSIhxYmQvJSHtMK5xiGi\nB1vuvm5iff5tpMxJN+57RtFjm4rWEFKUCMlLeUhHvXaT38Y7N27Y0NJVJg+7cru62ZyQ+jJC\n8lIeUubnlj08s/B3+/6QR6QCQurLeu8R6WeWPTzqvpt6Pa+R4kRIXspDeu8VHhvO6TDTnT5n\nTspEQooTIXkpD2nba9/y/YdaCnqwYULKREKKEyF5KU+gZ2God9VP/P7WvN+6b27dmjKRkOJE\nSF7Kk5k5q/h8rQdb3j+x7vL8H93nNVL3CKkv6xtnNmSzez82aMRthJSGkPqy3gzpH79Je5bW\n2cNT3VmbCal7hNSX9V5Idx/v3B3Z7Fn/0+PNv/zCgxYTUrcIqS/rtZD+d0DTa3MhPTl8wAPd\nzu/siTc7QuoWIfVlvRbSGaMe/Wv+EemJUdM99vC9BQ+lXk9IcSIkL+UhHXJtthBS9qNDAx6B\nkOJESF4SH335NQ3pyz35K0I9RUhxIiQviXPtPqghXTQ64BEIKU6E5KU8pEuGbsiH1PoB53PS\n3f4QUpwIyUt5SH8d2X+SmzixwY16POARCClOhOQl8T7SE5fn/4rQoZc/EfAAhBQpQvLS+a8I\nPd4S8tEoj5DiREheKjjXrocIKU6E5KU8pKlFkwMegZDiREheuvzvkZpGBDwCIcWJkLyUh7S3\n4NnfvOfUZwIegZDiREheunyN9P7LAh6BkOJESF66DOlnPLXbH0IShKS6DOmHjQGPQEhxIiQv\n5SFtFU/eNbEHf/u7xwgpToTkpeu/IrQq4BEIKU6E5CXxH/aJsy/v+X9q3gOEFCdC8sKZDTaE\nJAhJEZINIQlCUuUhTfiXE8sFOgIhxYmQvJSHdPgg51xd7n+D6vMCHYGQ4kRIXspDaj1l7v/t\nzD7zo3NO5xSh/SEkQUiqPKSLOnb8urcHPAIhxYmQvJSHdNjNOvjEsIBHIKQ4EZKX8pAalung\nfQ0Bj0BIcSIkL+UhHTdCPkT2J4dOCHgEQooTIXkpD+nb9W7stLOmjXN1twU8AiHFiZC8JD+N\n4rUDnXMDTlsX8ACEFClC8tLpzIbnHtv4aFvA3WcJKVaE5KWiDxrrEUKKEyF5qfCDxnqAkOJE\nSF4q/aCx/SOkOBGSl8o/aGx/CClOhOSFDxqzISRBSIoPGrMhJEFIig8asyEkQUiKDxqzISRB\nSIoPGrMhJEFIig8asyEkQUiKDxqzISRBSCpx9vdvAu64iJDiREheykMa+LGAOy4ipDgRkpfy\nkKa9/rmAe+5ASHEiJC/lIT0+83Vff6ClIOARCClOhOSl6z+iH/LvrxJSnAjJS3kyM942e44K\neARCihMheeFvf9sQkiAkVQzpM/cULh58LODOCwgpToTkpRiSmy8XcwPuvICQ4kRIXgjJhpAE\nISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiqFNKJi/PcKwoXAY9ASHEiJC+l\nkBICHoGQ4kRIXorJrEoIeARCihMheeFcOxtCEoSkKgmpfdO6tWvXb97PLEKKEyF5sYfUumCY\nvJ4atXRH2jxCihMheTGHtGWsG9+8ePnyRTNHuAmtKRMJKU6E5MUc0pzMah21raybnzKRkOJE\nSF7MIQ2fXRrPGJkykZDiREhezCFllpXGSwakTCSkOBGSF3NIo88vjaePSZlISHEiJC/mkObX\nrdglo+1Xu4UpEwkpToTkxRzS1kmuaWrzvLmzpjS6ydtSJhJSnAjJi/19pN3XTazPv42UOenG\ntrR5hBQnQvJS0SlCOzdu2NDSVSZ7brmh6H2EFCVC8lLxuXZtD92/c58fbn7xuKIRblc3mxJS\nX0ZIXuwh3XvehLM3ZFte5lzTytR5PCJFiZC8mEP6ecZl3MGbTh781nMOct9JmUhIcSIkL+aQ\nzsysbXvs5RfU35PN/mHwtJSJhBQnQvJiDumQC3Jf1rtT8+PmoSkTCSlOhOTFforQ4tyX7e6y\n/PgD/VMmElKcCMmLOaSxF+a/Dnl//uuMw1MmElKcCMmL/T+jaLinY/izzLkpEwkpToTkxRxS\ny9C6q2R0Qab/fSkTCSlOhOTF/j7SQ9MWyeDlI7+dNo+Q4kRIXgL8FaG/pF9NSHEiJC/8OS4b\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQbQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSIiQb\nQhKEpAjJhpAEISlCsiEkQUiKkGwISRCSqiSk9k3r1q5dv3k/swgpToTkxR5S64JhrmDU0h1p\n8wgpToTkxRzSlrFufPPi5csXzRzhJrSmTCSkOBGSF3NIczKrddS2sm5+ykRCihMheTGHNHx2\naTxjZMpEQooTIXkxh5RZVhovGZAykZDiREhezCGNPr80nj4mZSIhxYmQvJhDml+3YpeMtl/t\nFqZMJKQ4EZIXc0hbJ7mmqc3z5s6a0ugmb0uZSEhxIiQv9veRdl83sT7/NlLmpBvb0uYRUpwI\nyUtFpwjt3LhhQ0tXmfztwvOKTiOkKBGSlyDn2rX+sfMP5l5SNJ2QokRIXuwh/fINo09ZKU/q\nFqbthad2cSIkL+aQftLgGjPu1YWTgwipG4TUl/WNkM7I/Ef7rusyr9ieJaRuEVJf1jdCGnlB\n/uv6AW9oI6RuEVJf1jdCylxduPiqu5KQukVIfVnfCOmoN8rlVW45IXWHkPqyvhHSlXWf2ZO/\nbJ/l3vkOQuoaIfVlfSOkp0e5aYVB+5XOEVLXCKkv6xshZZ+64p06uv1FhNQ1QurL+khIPUVI\ncSIkL4RkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZIN\nIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUpWE1L5p3dq16zfvZxYhxYmQvNhDal0w\nzBWMWrojbR4hxYmQvJhD2jLWjW9evHz5opkj3ITWlImEFCdC8mIOaU5mtY7aVtbNT5lISHEi\nJC/mkIbPLo1njEyZSEhxIiQv5pAyy0rjJQNSJhJSnAjJizmk0eeXxtPHpEwkpDgRkhdzSPPr\nVuyS0far3cKUiYQUJ0LyYp3GBZoAAAdRSURBVA5p6yTXNLV53txZUxrd5G0pEwkpToTkxf4+\n0u7rJtbn30bKnHRjW9o8QooTIXmp6BShnRs3bGjpKpM/jR9XNIKQokRIXoKca/d0S6cf7F27\nuugaQooSIXkJEtLCtL3w1C5OhOSFkGwISRCSIiQbQhKEpMwhHV9mOCF1jZD6sr4RUr9+DUX1\nhNQ1QurL+kZIC5tKv6rjqV03CKkv6xsh7TnuhD0dY0LqBiH1ZX0jpOxDg97TMSSkbhBSX9ZH\nQso+87eO0d3XpkwjpDgRkhf+ipANIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRk\nQ0iCkBQh2RCSICRFSDaEJAhJEZINIQlCUoRkQ0iCkFQlIbVvWrd27frN+5lFSHEiJC/2kFoX\nDHMFo5buSJtHSHEiJC/mkLaMdeObFy9fvmjmCDehNWUiIcWJkLyYQ5qTWa2jtpV181MmElKc\nCMmLOaThs0vjGSM7X/vnTUVrug/p1FujdXHPQnpTtddp96aehXRxtddpd2qfCCmzrDReMqDT\nlQ/XuZK6vd3s4koXsUk9uZHOrvYqK3F2T/4JJ1V7lZW4sif/hD1kDmn0+aXx9DGdr32mteTp\n7naxtzViO3tyI+2u9ior0d0TiYSd1V5lJbr7N7yFOaT5dSt2yWj71W5hqOUAcTKHtHWSa5ra\nPG/urCmNbvK2kEsC4mN/H2n3dRPr8080Myfd2BZwQUCMKjpFaOfGDRtaevRUGqhtvX+uHXAA\nICQgAEICAiAkIABCAgIgJCAAQgICICQgAEICAiAkIABCAgIgJCAAQgICICQgAEICAiAkIABC\nAgIgJCAAQgICICQgAEICAiAkIABCAgIgJCAAQgICICQgAEICAiAkIABCAgIgJCCA2g1pgRuy\no9pr6D2r8h9NVXfohPd2+8Gi0WtfM/2IAYcd/5HHq72QHqnZkHYf2s/dUu1F9J5V7uSFC983\nZ5z7p+3VXkov2TrNNZ41b+aL3GE/rvZSeqJmQ/q6u6LulGovovescovzF21T3aoqr6S3vMFN\nfzJ38dzn64c+Ue219EDNhjTFbZzsHqr2KnqNhpS93l1X3YX0ljvcJP3Q8WVTf1rdpfRIrYb0\nB/eq7E3u3dVeRq/pCOli96PqLqS3zHS3V3sJXmo1pAXupuw/Gg+t2Q+4XeXe0dLSct/Cfs3V\nXkkvGVf3TLWX4KVGQ9p16KDc/w9vc9+s9kJ6S+G3ds7VXR7X3a3nBr+g2ivwU6Mh3eouyH29\n002r9kJ6yyp33po1a25+72HDo/idlr+mpmqvwE+NhvRq98XcM5+Nh9dtqvZKeknHa6Q/DR25\nq7or6SXHuKeqvQQvtRnS712HD1R7Kb2kI6TsuW5DVRfSWy5yX9JR+y+rupAeqs2Q3u3eviZv\nVf0Re6u9lt5RDOl0d29VF9JbfuzG/ENGn3Wfre5SeqQmQ9p1SMOTMjrX/Wd1l9JbOkK6f9BB\nNXpqwwx34sO5i72fqj+itdpr6YGaDOlWd5GO7nZnVHUlvaZwitDCd56V6feVai+llzx7tuv/\nmktnjHbjNlZ7KT1RkyGd6n7RMXx5/aPVXEmvkV9/Dzz6vNp8YlfwnXNGZJpO/Fwcpx7XZEjA\n842QgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAA\nCAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQ\ngAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkI\ngJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAI\nCQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCAAAgJCICQgAAICQiAkIAACAkIgJCA\nAAgJCOD/AXGqTG9tP1UNAAAAAElFTkSuQmCC"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Line chart”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3deYBNZR8H8OfOaoaxNdaxppAt\na4osZS2yFEmIUsoSSkXIRJtURFJSqUQbLVJESrylbCnSIilLZN+XWe557517585dzvI85zzP\nc+51vp8/Zu7c85zn95zMt7n33HOehygAYBmxewAAFwIECYADBAmAAwQJgAMECYADBAmAAwQJ\ngAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYAD\nBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJ\ngAMECYADBAmAAwQJgAMECYADBAmAAwQp+nxASLK83YALBCkKzCGEHC34EUGKQQhSFAgL0vZp\n014w0QtdkPbHk19NdA4GEKQoEBYkk+iCNIMgSCIgSFFAZpCaI0hCIEhRQP090muEtFBWty1e\n+OoVvud/u/uS5LTG07ODd91z32WphWqNPuDbLSW4vfud9qUS0q6YkePrq2X28PTSnUieEXKO\ny0kQpCigHqR3CanzRZL39z7+S+/Tiwr5UnDt2YKmXxXzPVfm57zdSvjbL/du6+PbRDq7FWUB\nIfWe82xAkERBkKKAepA838pVqf9we8/GKzw//pVCyIO/r29FyMOBlvtKEtJq4dv1CamR7W2f\n7m/fxLPtU0LiZm15LYGQ9/P6qlIxsX6NXz7xbJ2/5i/ZR3jhQ5CigGaQSIuzeX9Z4rIUZRgh\nrT3PHixC0gJ/kh72ZOe0ohzwZGxhXvuW5wLtZ3bq5P3D04WQ23x9Xbrb8+M+gvdIQiBIUUA7\nSF95vn/p+f63olQjZNxZj5aEfJnfsg4hd3q/f7t06faQ9jsDnd1LSHtfXwu8PyJIgiBIUUA7\nSCc837d7vm9R3HEkYLq/oTuekKeCdwtqrygrul6cnNe8jW/bfm8jBEkQBCkKaAYp73T27rxg\nnCrIEcn0N/Q+93L4bv72yizPt8KXXZ6eH6T4XO9GBEkQBCkK0ATJ+9fn+bD9cj1/pZ4L383f\n/mQqIbeeUZQh+UHyfcaEIAmCIEUBmiAp1VXOWtfwv0ea/9hjS8Par/Z8/dHzUxsESQoEKQpQ\nBeleQsqfVpScW28fsye/5X2EpB9TlCMlCJkT1n6F5+s6RfnF80erZVCQ9nueXiPz2JwCQYoC\n3iBd39Wnn1aQdqQQ0vyzL24kpHZO/o7/pBHS9L35jQipdCqs/V5Pgm7YsjjD80er6Nr/AkHK\nSSSkxftf2HGUFzYEKQrMCTqRcJFWkJQPfOfgSEbQS7Mlqb7nym5W+wvmUX5nee/ZiYLr8K7z\nPttJ9hFe+BCkKEAXJGXbHVWTU+uMOxK861+DL01Jqf3wwcj2WU/XSsm4c6+yokZChXcLgrSn\nW/FCVZ+QeXTOgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCA\nIAFwgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCAB\ncIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCAIAFwgCABcIAgAXCA\nIAFwICFImzcAxJTN7L/l4oO0ngDEmPXMv+big/QtOS+8BgBH58m3zPsgSABhECQADhAkAA4Q\nJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQA\nDhAkAA4QJAAOECQADhAkAHp7/9XYgCABUNtTaZzGFgQJgNaxy1ue1diEIAFQOt+m9hHNbQgS\nAJXcHhn/aG5EkADoDC/2k/ZGBAmAyqSUNTpbESQAGvMSFultRpAAKCxJeEF3O4IEYOyHwpn6\nDRAkAEPbS99l0AJBAjCyt0rnbIMmCBKAgeP1m54yaoMgAeg7367WYeNGCBKAntye5f82boUg\nAegaWZRmwXIECUDPk0lf0jRDkAB0vJ3wAVU7BAlA25dJ0+kaIkgAmtYXGU/ZEkEC0PJnmb5u\nyqYIEoCGA5d2MrqgIQBBAlB3omETwwsaAhAkAFVZ7S/5j761LUHK2bZeazIWHwQJ7Oa+rdxO\nhuZyg/Rtz8u7bVS21yEk7UXddggS2GxSMZoLGgKkBun7RJJIiu5oXrjPjUXIYp2GCBLYrcGT\nTM2lBqlz4oc5e+r2jV+jKL8XbqvTEEECm+WkfMbUXmqQLurr+bKStPQ+HlAifCRvzA4YhSCB\nvX4n2nPYqZEapMRMz5dT5B7v47EJYRt31bw4oBQ5abYGAA+L0mg/ivWRGqSqt3m/Fhvj/dqr\njE7DlxEksNfEK9naSw3SwOTAFHtrE2/SaYgggc1uvpOtvdQgbS/hetj3qG9iwjqdhggS2Kz2\nNLb2cj9H2tbWfzFt3Yqf6LVDkMBeWUkr2Haw6RKhvfqbESSw1xaitTSfhui81g5BAnu9U5Jx\nBwQJINL4low7IEgAkboPYdwBQQKIdKnuRdUqECSACGfjVzHugSABRNhIDjLugSABRHizLOse\n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\nAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAO\nECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAkAA4QJAAOECQADhAk\nAA4QJAAOECQADhAkAA4QJAAOEKTY04vss3sIEA5Big2jAstDkuZPdThi93AgHIIUGz4Z4XER\nGeb5Ot3usYAKBCmG1CZn7R4CaECQYog/SN73SL3J0UGlU5r+cHpE+cJXbfQ+u39IpcT0ruvs\nHaFzIUgxJChI/UnbiZveKFSp8+gNC4uXyVKUA5WLjZ73ZIXkVXYP0qEQpBgSFKSBZLDn0c2k\nh+frCPKtogxOWO95uCutsa0jdC4EKYaEBGmF59E4Ms/zdRZZqLjTG+7z6kBO2jtGp0KQYkhI\nkLZ5HmWSrzxf55B3lP2Bs+O/2DtGp0KQYkhIkLYr3iCtUXxB2k7qL/U5au8YnQpBiiE6QdpP\n6ts7NqdDkGKITpCU9EJ5f4oO2Dk+J0OQYohekAaTsZ6HB8p2tnWEzoUgxRC9IP1Xidz+xpOV\nEpfbO0THQpBiiF6QlH2DKyYU7/KDrQN0MAQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAME\nCYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmA\nAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgAMECYADBAmAAwQJgIP/A2dAh0qLdHUQAAAA\nAElFTkSuQmCC"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "Plot with title “Scatter plot x vs y”"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dd2ATZR8H8Ceru5SWUiizjLI3\ngowyK8OyQWZB9pZNQYaibGXIRpANInsoiAwZ+lo2MgUEKXvTMkoLHbn3VjpoyGif5O6S7+eP\n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\nKPYMUm9CKtvruZQPQVIUuwVp7cxW7Fe/PeYXBAGCpCh2C1Id7uBDH7s8lWNAkBTFbkH6xFVb\nfFay+eVAhCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQ\ngCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAg\nAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUGCHIJ09BaAoZ61/l9s+SCcJgMKc\ntPptbvsg/UXe2vw5ACh6S/6yeh0ECeAdCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgS\nAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBKApc6NDgsbfc7oLAQJwELTNLUjImpr\nphmbhyABWGazyzau2eayxchMBAnAMhVHCu3ISkZmIkgAFnlFjgqdSFVsxrkIEoBF7pOrQucK\nuZ9xLoIEYJEEt91CZ5dbQsa5CBKAZdo01HNNcoM2RmYiSACWueLT6QHDPOjkc9XITAQJwEKn\ny5CgIFLmtLF5CBKApZJPr1p1KtnoLAQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYAC\nBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJgAIECYACBAmAAgQJ\ngAIECSDF8e+nbH2WqTURJADRrRBN8Zq+nvMzsy6CBCCIDa4TxTBJP7gszcTKCBKA4Nv8r/h2\njt8b61dGkAAEdcYI7SvdIetXRpAABMWWiJ3A9davjCABCD6cLLQJ7nusXxlBAhB8Xk640cRm\n1+fWr4wgAQge+PbmjjIczzkmEysjSACiyMA87QfUVvdMysS6CBKAwcul/dp+eTRTqyJIABQg\nSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgAFCBIABQgSAAUIEgA\nFEgTpBejL5ucjyCBwkgTpDvkF5PzESRQGLsGqadBR9KwZ08TCyJIoDB2DRJJx8SCCBIojF2D\nNExT4bcYziWyISbGxIIIEiiMffeRTlZQ9efGDDO2j/S4Y9sUISQToy8DSMfOBxsSp7vn2WI8\nSC/Gjk7RiLzK/HMA2J/dj9pdDyXNbps7avc9ggTKIsHh75V+XhMQJHAsUvyO9KgDQZDAsUjz\n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\nAaylrCAByBSCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIEQAGCBEABggRAAYIE\nQAGCBEABggRAAYIEQAGCBECBPIN0kgAozEmr3+a2DxJz9lSm5Om5ViYmkBVSl2DQoKrUFaRw\nHy51BQbDPTL3Dnu/s9a/y+0QpEwq+oPUFRgcJfFSl2AwsK3UFaTItlPqCgx2ZpO6AgZBsgSC\nZAyClA6CZB6CZAyClA6CZB6CZAyClA6CZB6CZAyClA6CZB6CZAyClA6CZB6CZAyClA6CZB6C\nZAyClA6CZB6CZAyClA6CZB6CZAyClI58g1RqtdQVGJzWyOY+t8PCpa4ghf8eqSsw2OMvdQWM\nnIN0WzbvXuY/qQtI8fyp1BWkiEqWugKD5CipK2DkHCQABUGQAChAkAAoQJAAKECQAChAkAAo\nQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKECQAChAkAAoQJAAKJBxkKJHFHAJanFU6jI4\nCZ+rK0tdAytmSEFdYM/7UpfBkckrwsjmbSLfID0LIk2+CNe6nZe6EIb5p5K3HN42byuRNlN6\n6ApFS12IbF4RRj5vE/kGaSCZz/7dSsKkLoR54f7BNVcZvG1mk2/YvxvJCKkLkc0rwsjnbSLf\nIA0N5QZt0LsXlLoQ5tmIBEYOb5sK3m+4pmiAXupK5PKKMPJ5m8g3SII3uppSl8CTwdsmXhPK\nt92ILAZjkcErkkr6t4ncgzSX/+SWngzeNv+Sbnw7geyXuBKeDF6RVNK/TWQepMMuIYlS18CT\nwdvmNBnItzPINokr4cngFUkhg7eJ/IIU05c1Q+ivd630TB6VyOBtc5p8xrffku0SV8KTwSti\nIO3bRCC/IN3h7irNf+PVf0kav5RFJbJ421wjXfl2PDkgbSECGbwiAqnfJgL5BSmFvgcZlCR1\nEQYyeNu81dbl247kbUFBpAAAAkJJREFUlsSV8GTwivBk8jaRcZCGkKlSl5BKDm+bDz1es3+T\n8+SXuhCeHF4RjkzeJvIN0lYyROoS0pDD22Yp+Yr9u5h8LXUhPDm8Iox83ibyDVIRMmg0T/Iz\nYg6zRWhys38kHsE+qRZp8XUHVdnX0pbByOcVYeTzNpFvkIhBlNSVTDNUck3iQl6NLKjLO1Dy\nA1QyekXk8zaRb5AAFARBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAA\nQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEEC\noABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBAqAAQQKgAEECoABBUqb9\nqo5c87H6T6krAR6CpFD9yH6G2UKGSV0HCBAkhXoVFPwmNn+xOKnrAAGCpFQHVRNGqiOlrgJE\nCJJiDXDVRUhdAxggSIp1mpALUtcABgiSUiVXz5Wjll7qKkCEICnVDLJhJZkjdRUgQpAU6qp7\nGMPU8/hX6jpAgCApU3J1z5tsmlxrJktdCfAQJGWaSWZzzUQyS+pKgIcgAVCAIAFQgCABUIAg\nAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQ\ngCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAgAVCAIAFQgCABUIAg\nAVDwf/ej6Zaq4H2AAAAAAElFTkSuQmCC"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 19 To create a simple linear regression model to predict sales based on advertising spend."
      ],
      "metadata": {
        "id": "dMHMU1QZeBoG"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "set.seed(42)\n",
        "ad <- data.frame(Spend = runif(100, 100, 1000))\n",
        "ad$Sales <- 5 + 0.04 * ad$Spend + rnorm(100, sd = 5)\n",
        "model1 <- lm(Sales ~ Spend, data = ad)\n",
        "summary(model1)\n",
        "newdata <- data.frame(Spend = c(150, 500, 900))\n",
        "predict(model1, newdata, interval = \"prediction\")\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 473
        },
        "id": "BtDiJmaKeKO9",
        "outputId": "2d920614-b68c-42de-f8da-8ce8720fbdc5"
      },
      "execution_count": 21,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "Call:\n",
              "lm(formula = Sales ~ Spend, data = ad)\n",
              "\n",
              "Residuals:\n",
              "     Min       1Q   Median       3Q      Max \n",
              "-15.1278  -2.5679   0.2287   2.8934  12.9742 \n",
              "\n",
              "Coefficients:\n",
              "            Estimate Std. Error t value Pr(>|t|)    \n",
              "(Intercept) 3.488892   1.082936   3.222  0.00173 ** \n",
              "Spend       0.042421   0.001712  24.785  < 2e-16 ***\n",
              "---\n",
              "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
              "\n",
              "Residual standard error: 4.628 on 98 degrees of freedom\n",
              "Multiple R-squared:  0.8624,\tAdjusted R-squared:  0.861 \n",
              "F-statistic: 614.3 on 1 and 98 DF,  p-value: < 2.2e-16\n"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A matrix: 3 × 3 of type dbl</caption>\n",
              "<thead>\n",
              "\t<tr><th></th><th scope=col>fit</th><th scope=col>lwr</th><th scope=col>upr</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>1</th><td> 9.852002</td><td> 0.5116185</td><td>19.19239</td></tr>\n",
              "\t<tr><th scope=row>2</th><td>24.699258</td><td>15.4662821</td><td>33.93223</td></tr>\n",
              "\t<tr><th scope=row>3</th><td>41.667551</td><td>32.3708363</td><td>50.96427</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA matrix: 3 × 3 of type dbl\n\n| <!--/--> | fit | lwr | upr |\n|---|---|---|---|\n| 1 |  9.852002 |  0.5116185 | 19.19239 |\n| 2 | 24.699258 | 15.4662821 | 33.93223 |\n| 3 | 41.667551 | 32.3708363 | 50.96427 |\n\n",
            "text/latex": "A matrix: 3 × 3 of type dbl\n\\begin{tabular}{r|lll}\n  & fit & lwr & upr\\\\\n\\hline\n\t1 &  9.852002 &  0.5116185 & 19.19239\\\\\n\t2 & 24.699258 & 15.4662821 & 33.93223\\\\\n\t3 & 41.667551 & 32.3708363 & 50.96427\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  fit       lwr        upr     \n",
              "1  9.852002  0.5116185 19.19239\n",
              "2 24.699258 15.4662821 33.93223\n",
              "3 41.667551 32.3708363 50.96427"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 20 To build a multiple regression model predicting chick weight using time and diet as predictors, and compute model error."
      ],
      "metadata": {
        "id": "PXLC3lJyeRB3"
      }
    },
    {
      "cell_type": "code",
      "source": [
        " data(\"ChickWeight\")\n",
        "cw <- ChickWeight\n",
        "cw$Diet <- factor(cw$Diet)\n",
        "set.seed(7)\n",
        "train_idx <- sample(seq_len(nrow(cw)), size = floor(0.8 * nrow(cw)))\n",
        "train <- cw[train_idx, ]\n",
        "test <- cw[-train_idx, ]\n",
        "model_train <- lm(weight ~ Time + Diet, data = train)\n",
        "pred <- predict(model_train, newdata = test)\n",
        "mse <- mean((test$weight - pred)^2)\n",
        "rmse <- sqrt(mse)\n",
        "list(mse = mse, rmse = rmse)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 114
        },
        "id": "33cK96afeW6s",
        "outputId": "378bf7ce-da66-4fd8-c41b-b9de18f2c8ee"
      },
      "execution_count": 22,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<dl>\n",
              "\t<dt>$mse</dt>\n",
              "\t\t<dd>1498.01285826464</dd>\n",
              "\t<dt>$rmse</dt>\n",
              "\t\t<dd>38.7041710706307</dd>\n",
              "</dl>\n"
            ],
            "text/markdown": "$mse\n:   1498.01285826464\n$rmse\n:   38.7041710706307\n\n\n",
            "text/latex": "\\begin{description}\n\\item[\\$mse] 1498.01285826464\n\\item[\\$rmse] 38.7041710706307\n\\end{description}\n",
            "text/plain": [
              "$mse\n",
              "[1] 1498.013\n",
              "\n",
              "$rmse\n",
              "[1] 38.70417\n"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "EXP NO : 21 To build and evaluate a logistic regression model predicting iris species using petal length and width."
      ],
      "metadata": {
        "id": "mboLxHCJeb1F"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "# Install required packages if not already installed\n",
        "if(!requireNamespace(\"nnet\", quietly = TRUE)) install.packages(\"nnet\")\n",
        "if(!requireNamespace(\"caret\", quietly = TRUE)) install.packages(\"caret\")\n",
        "if(!requireNamespace(\"e1071\", quietly = TRUE)) install.packages(\"e1071\")\n",
        "\n",
        "# Load libraries\n",
        "library(nnet)\n",
        "library(caret)\n",
        "library(e1071)\n",
        "\n",
        "# Set seed to reproduce results\n",
        "set.seed(2025)\n",
        "\n",
        "# Train-test split (80% train, 20% test)\n",
        "idx <- sample(seq_len(nrow(iris)), size = floor(0.8 * nrow(iris)))\n",
        "train_iris <- iris[idx, ]\n",
        "test_iris <- iris[-idx, ]\n",
        "\n",
        "# Train multinomial logistic regression model\n",
        "model_multi <- multinom(Species ~ Petal.Length + Petal.Width, data = train_iris, trace = FALSE)\n",
        "\n",
        "# Predict on test data\n",
        "pred_class <- predict(model_multi, newdata = test_iris)\n",
        "pred_class <- factor(pred_class, levels = levels(iris$Species))\n",
        "test_ref <- factor(test_iris$Species, levels = levels(iris$Species))\n",
        "\n",
        "# Confusion matrix + accuracy + statistics\n",
        "result <- confusionMatrix(pred_class, test_ref)\n",
        "print(result)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "b98ekvagefP_",
        "outputId": "5c70ddf5-6c38-4ef3-d27e-3bb10ebe83f1"
      },
      "execution_count": 24,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "Installing package into ‘/usr/local/lib/R/site-library’\n",
            "(as ‘lib’ is unspecified)\n",
            "\n",
            "also installing the dependencies ‘clock’, ‘recipes’\n",
            "\n",
            "\n",
            "Loading required package: lattice\n",
            "\n",
            "\n",
            "Attaching package: ‘e1071’\n",
            "\n",
            "\n",
            "The following object is masked from ‘package:ggplot2’:\n",
            "\n",
            "    element\n",
            "\n",
            "\n"
          ]
        },
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Confusion Matrix and Statistics\n",
            "\n",
            "            Reference\n",
            "Prediction   setosa versicolor virginica\n",
            "  setosa         10          0         0\n",
            "  versicolor      0         11         0\n",
            "  virginica       0          2         7\n",
            "\n",
            "Overall Statistics\n",
            "                                          \n",
            "               Accuracy : 0.9333          \n",
            "                 95% CI : (0.7793, 0.9918)\n",
            "    No Information Rate : 0.4333          \n",
            "    P-Value [Acc > NIR] : 9.978e-09       \n",
            "                                          \n",
            "                  Kappa : 0.899           \n",
            "                                          \n",
            " Mcnemar's Test P-Value : NA              \n",
            "\n",
            "Statistics by Class:\n",
            "\n",
            "                     Class: setosa Class: versicolor Class: virginica\n",
            "Sensitivity                 1.0000            0.8462           1.0000\n",
            "Specificity                 1.0000            1.0000           0.9130\n",
            "Pos Pred Value              1.0000            1.0000           0.7778\n",
            "Neg Pred Value              1.0000            0.8947           1.0000\n",
            "Prevalence                  0.3333            0.4333           0.2333\n",
            "Detection Rate              0.3333            0.3667           0.2333\n",
            "Detection Prevalence        0.3333            0.3667           0.3000\n",
            "Balanced Accuracy           1.0000            0.9231           0.9565\n"
          ]
        }
      ]
    }
  ]
}