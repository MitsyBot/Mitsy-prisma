/*
  Warnings:

  - Added the required column `in_star_message` to the `starboards` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "starboards" ADD COLUMN     "in_star_message" VARCHAR(255) NOT NULL;
