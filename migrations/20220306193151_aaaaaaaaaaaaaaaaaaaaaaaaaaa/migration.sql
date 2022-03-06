/*
  Warnings:

  - The primary key for the `premium_payments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Changed the type of `uuid` on the `premium_payments` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "premium_payments" DROP CONSTRAINT "premium_payments_pkey",
DROP COLUMN "uuid",
ADD COLUMN     "uuid" UUID NOT NULL,
ADD CONSTRAINT "premium_payments_pkey" PRIMARY KEY ("uuid");
