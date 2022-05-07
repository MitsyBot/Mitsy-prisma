/*
  Warnings:

  - Changed the type of `remind_at` on the `reminders` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "reminders" DROP COLUMN "remind_at",
ADD COLUMN     "remind_at" DOUBLE PRECISION NOT NULL;
