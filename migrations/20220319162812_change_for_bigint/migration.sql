/*
  Warnings:

  - You are about to alter the column `given_at` on the `comet_transactions` table. The data in that column could be lost. The data in that column will be cast from `DoublePrecision` to `BigInt`.

*/
-- AlterTable
ALTER TABLE "comet_transactions" ALTER COLUMN "given_at" SET DATA TYPE BIGINT;
