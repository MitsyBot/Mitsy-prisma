/*
  Warnings:

  - You are about to drop the `WelcomerConfig` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "WelcomerConfig" DROP CONSTRAINT "WelcomerConfig_id_fkey";

-- DropTable
DROP TABLE "WelcomerConfig";

-- CreateTable
CREATE TABLE "guild_welcomer" (
    "id" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT false,
    "tell_on_join" BOOLEAN NOT NULL DEFAULT false,
    "channel_join" TEXT,
    "join_message" JSONB NOT NULL DEFAULT '{ "content": "{@User} entrou no servidor!" }',
    "delete_join_messages_after" INTEGER NOT NULL DEFAULT 0,
    "tell_on_remove" BOOLEAN NOT NULL DEFAULT false,
    "channel_remove" TEXT,
    "remove_message" JSONB NOT NULL DEFAULT '{ "content": "{@User} saiu do servidor!" }',
    "delete_remove_messages_after" INTEGER NOT NULL DEFAULT 0,
    "tell_on_private_join" BOOLEAN NOT NULL DEFAULT false,
    "join_private_message" JSONB NOT NULL DEFAULT '{ "content": "{@User} Bem vindo ao servidor!" }',

    CONSTRAINT "guild_welcomer_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "guild_welcomer" ADD CONSTRAINT "guild_welcomer_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
