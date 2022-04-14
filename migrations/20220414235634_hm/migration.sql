/*
  Warnings:

  - The primary key for the `guild_general` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `guild_general` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - A unique constraint covering the columns `[guildId]` on the table `guild_general` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `guildId` to the `guild_general` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "guild_birthday" DROP CONSTRAINT "guild_birthday_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_event_log" DROP CONSTRAINT "guild_event_log_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_invite_blocker" DROP CONSTRAINT "guild_invite_blocker_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "premium_keys" DROP CONSTRAINT "premium_keys_active_in_fkey";

-- AlterTable
ALTER TABLE "guild_general" DROP CONSTRAINT "guild_general_pkey",
ADD COLUMN     "guildId" TEXT NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" BIGSERIAL NOT NULL,
ADD CONSTRAINT "guild_general_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "guild_general_guildId_key" ON "guild_general"("guildId");

-- AddForeignKey
ALTER TABLE "premium_keys" ADD CONSTRAINT "premium_keys_active_in_fkey" FOREIGN KEY ("active_in") REFERENCES "guild_general"("guildId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_birthday" ADD CONSTRAINT "guild_birthday_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("guildId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_event_log" ADD CONSTRAINT "guild_event_log_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("guildId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_invite_blocker" ADD CONSTRAINT "guild_invite_blocker_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("guildId") ON DELETE RESTRICT ON UPDATE CASCADE;
