/*
  Warnings:

  - The primary key for the `WelcomerConfig` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `guild_id` on the `WelcomerConfig` table. All the data in the column will be lost.
  - The primary key for the `guild_birthday` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `guild_id` on the `guild_birthday` table. All the data in the column will be lost.
  - The primary key for the `guild_event_log` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `guild_id` on the `guild_event_log` table. All the data in the column will be lost.
  - The primary key for the `guild_general` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `guildId` on the `guild_general` table. All the data in the column will be lost.
  - The primary key for the `guild_invite_blocker` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `guild_id` on the `guild_invite_blocker` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "WelcomerConfig" DROP CONSTRAINT "WelcomerConfig_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_birthday" DROP CONSTRAINT "guild_birthday_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_event_log" DROP CONSTRAINT "guild_event_log_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "guild_invite_blocker" DROP CONSTRAINT "guild_invite_blocker_guild_id_fkey";

-- DropForeignKey
ALTER TABLE "premium_keys" DROP CONSTRAINT "premium_keys_active_in_fkey";

-- DropIndex
DROP INDEX "WelcomerConfig_guild_id_key";

-- DropIndex
DROP INDEX "guild_birthday_guild_id_key";

-- DropIndex
DROP INDEX "guild_event_log_guild_id_key";

-- DropIndex
DROP INDEX "guild_general_guildId_key";

-- DropIndex
DROP INDEX "guild_invite_blocker_guild_id_key";

-- AlterTable
ALTER TABLE "WelcomerConfig" DROP CONSTRAINT "WelcomerConfig_pkey",
DROP COLUMN "guild_id",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "WelcomerConfig_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "WelcomerConfig_id_seq";

-- AlterTable
ALTER TABLE "guild_birthday" DROP CONSTRAINT "guild_birthday_pkey",
DROP COLUMN "guild_id",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "guild_birthday_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "guild_birthday_id_seq";

-- AlterTable
ALTER TABLE "guild_event_log" DROP CONSTRAINT "guild_event_log_pkey",
DROP COLUMN "guild_id",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "guild_event_log_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "guild_event_log_id_seq";

-- AlterTable
ALTER TABLE "guild_general" DROP CONSTRAINT "guild_general_pkey",
DROP COLUMN "guildId",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "guild_general_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "guild_general_id_seq";

-- AlterTable
ALTER TABLE "guild_invite_blocker" DROP CONSTRAINT "guild_invite_blocker_pkey",
DROP COLUMN "guild_id",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "guild_invite_blocker_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "guild_invite_blocker_id_seq";

-- AddForeignKey
ALTER TABLE "premium_keys" ADD CONSTRAINT "premium_keys_active_in_fkey" FOREIGN KEY ("active_in") REFERENCES "guild_general"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_birthday" ADD CONSTRAINT "guild_birthday_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_event_log" ADD CONSTRAINT "guild_event_log_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "WelcomerConfig" ADD CONSTRAINT "WelcomerConfig_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guild_invite_blocker" ADD CONSTRAINT "guild_invite_blocker_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
