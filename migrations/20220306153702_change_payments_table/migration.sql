/*
  Warnings:

  - The primary key for the `premium_payments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `paid_at` column on the `premium_payments` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Added the required column `uuid` to the `premium_payments` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `user` on the `premium_payments` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `created_at` on the `premium_payments` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "premium_payments" DROP CONSTRAINT "premium_payments_pkey",
ADD COLUMN     "uuid" UUID NOT NULL,
DROP COLUMN "user",
ADD COLUMN     "user" JSON NOT NULL,
DROP COLUMN "created_at",
ADD COLUMN     "created_at" DOUBLE PRECISION NOT NULL,
DROP COLUMN "paid_at",
ADD COLUMN     "paid_at" DOUBLE PRECISION,
ALTER COLUMN "expires_at" SET DATA TYPE TEXT,
ALTER COLUMN "reference_id" SET DATA TYPE TEXT,
ADD CONSTRAINT "premium_payments_pkey" PRIMARY KEY ("uuid");
