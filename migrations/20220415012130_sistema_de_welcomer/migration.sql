-- CreateTable
CREATE TABLE "WelcomerConfig" (
    "id" BIGSERIAL NOT NULL,
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
    "guild_id" TEXT NOT NULL,

    CONSTRAINT "WelcomerConfig_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "WelcomerConfig_guild_id_key" ON "WelcomerConfig"("guild_id");

-- AddForeignKey
ALTER TABLE "WelcomerConfig" ADD CONSTRAINT "WelcomerConfig_guild_id_fkey" FOREIGN KEY ("guild_id") REFERENCES "guild_general"("guildId") ON DELETE RESTRICT ON UPDATE CASCADE;
