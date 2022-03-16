/*
  Warnings:

  - The `given_at` column on the `CometTransaction` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "CometTransaction" DROP COLUMN "given_at",
ADD COLUMN     "given_at" DOUBLE PRECISION;
