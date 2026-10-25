#include <gtest/gtest.h>

#include "../src/add.hpp"

TEST(MathTest, BasicAddition) {
    EXPECT_EQ(add(2, 2), 4);
}

TEST(MathTest, AddsNegativeNumbers) {
    EXPECT_EQ(add(-3, -2), -5);
}
