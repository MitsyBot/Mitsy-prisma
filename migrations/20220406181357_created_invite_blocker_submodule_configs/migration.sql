-- CreateTable
CREATE TABLE "guild_invite_blocker" (
    "id" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT false,
    "whitelisted_channels" JSONB[],
    "whitelist_server_invites" BOOLEAN NOT NULL DEFAULT true,
    "delete_message" BOOLEAN NOT NULL DEFAULT true,
    "tell_user" BOOLEAN NOT NULL DEFAULT true,
    "warn_message" TEXT NOT NULL DEFAULT E'{@user} Você não pode enviar convites de outros servidores aqui!',

    CONSTRAINT "guild_invite_blocker_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "guild_invite_blocker" ADD CONSTRAINT "guild_invite_blocker_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
