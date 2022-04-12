-- CreateTable
CREATE TABLE "guild_birthday" (
    "id" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT false,
    "channel" TEXT,
    "message" JSONB NOT NULL DEFAULT '{ "content": "{@User} parabens meu querido" }',

    CONSTRAINT "guild_birthday_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "guild_birthday" ADD CONSTRAINT "guild_birthday_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
