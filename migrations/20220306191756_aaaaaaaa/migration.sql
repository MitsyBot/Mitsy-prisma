/*
  Warnings:

  - The primary key for the `premium_payments` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "premium_payments" DROP CONSTRAINT "premium_payments_pkey",
ALTER COLUMN "uuid" SET DATA TYPE TEXT,
ADD CONSTRAINT "premium_payments_pkey" PRIMARY KEY ("uuid");
