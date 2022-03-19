/*
  Warnings:

  - Made the column `given_at` on table `comet_transactions` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "comet_transactions" ALTER COLUMN "given_at" SET NOT NULL,
ALTER COLUMN "given_at" SET DATA TYPE TEXT;
