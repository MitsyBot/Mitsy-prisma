/*
  Warnings:

  - The primary key for the `reminders` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Added the required column `guild_id` to the `reminders` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "reminders" DROP CONSTRAINT "reminders_pkey",
ADD COLUMN     "guild_id" VARCHAR(255) NOT NULL,
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "reminders_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "reputations" ALTER COLUMN "given_by_ip" DROP NOT NULL,
ALTER COLUMN "given_by_email" DROP NOT NULL,
ALTER COLUMN "content" DROP NOT NULL;
