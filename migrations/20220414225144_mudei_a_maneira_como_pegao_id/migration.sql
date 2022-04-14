/*
  Warnings:

  - The primary key for the `guild_birthday` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `guild_birthday` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `guild_event_log` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `guild_event_log` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `guild_invite_blocker` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `guild_invite_blocker` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - A unique constraint covering the columns `[guild_id]` on the table `guild_birthday` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[guild_id]` on the table `guild_event_log` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[guild_id]` on the table `guild_invite_blocker` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `guild_id` to the `guild_birthday` table without a default value. This is not possible if the table is not empty.
  - Added the required column `guild_id` to the `guild_event_log` table without a default value. This is not possible if the table is not empty.
  - Added the required column `guild_id` to the `guild_invite_blocker` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "guild_birthday" DROP CONSTRAINT "guild_birthday_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_event_log" DROP CONSTRAINT "guild_event_log_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_invite_blocker" DROP CONSTRAINT "guild_invite_blocker_id_fkey";

-- AlterTable
ALTER TABLE "guild_birthday" DROP CONSTRAINT "guild_birthday_pkey",
ADD COLUMN     "guild_id" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" BIGSERIAL NOT NULL,
ADD CONSTRAINT "guild_birthday_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "guild_event_log" DROP CONSTRAINT "guild_event_log_pkey",
ADD COLUMN     "guild_id" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" BIGSERIAL NOT NULL,
ADD CONSTRAINT "guild_event_log_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "guild_invite_blocker" DROP CONSTRAINT "guild_invite_blocker_pkey",
ADD COLUMN     "guild_id" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" BIGSERIAL NOT NULL,
ADD CONSTRAINT "guild_invite_blocker_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "guild_birthday_guild_id_key" ON "guild_birthday"("guild_id");

-- CreateIndex
CREATE UNIQUE INDEX "guild_event_log_guild_id_key" ON "guild_event_log"("guild_id");

-- CreateIndex
CREATE UNIQUE INDEX "guild_invite_blocker_guild_id_key" ON "guild_invite_blocker"("guild_id");

-- AddForeignKey
ALTER TABLE "guild_birthday" ADD CONSTRAINT "guild_birthday_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_event_log" ADD CONSTRAINT "guild_event_log_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_invite_blocker" ADD CONSTRAINT "guild_invite_blocker_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
