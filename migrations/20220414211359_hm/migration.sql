/*
  Warnings:

  - Made the column `warn_message` on table `guild_invite_blocker` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "guild_general" ALTER COLUMN "blacklisted_warning" SET DEFAULT '{ "content": "Você não pode usar comandos neste canal" }';

-- AlterTable
ALTER TABLE "guild_invite_blocker" ALTER COLUMN "warn_message" SET NOT NULL,
ALTER COLUMN "warn_message" SET DEFAULT '{ "content": "Você não pode enviar invites neste canal" }';

-- AlterTable
ALTER TABLE "shop_colors" ALTER COLUMN "cost" SET DEFAULT 1000;
