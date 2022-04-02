-- AlterTable
ALTER TABLE "comet_transactions" ALTER COLUMN "reason" DROP NOT NULL;

-- CreateTable
CREATE TABLE "guild_event_log" (
    "id" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT false,
    "event_log_channel" TEXT,
    "member_banned" BOOLEAN NOT NULL DEFAULT false,
    "member_unbanned" BOOLEAN NOT NULL DEFAULT false,
    "message_edited" BOOLEAN NOT NULL DEFAULT false,
    "message_deleted" BOOLEAN NOT NULL DEFAULT false,
    "nickname_changes" BOOLEAN NOT NULL DEFAULT false,
    "voice_channel_joins" BOOLEAN NOT NULL DEFAULT false,
    "voice_channel_leaves" BOOLEAN NOT NULL DEFAULT false,
    "avatar_changes" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "guild_event_log_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "guild_event_log" ADD CONSTRAINT "guild_event_log_id_fkey" FOREIGN KEY ("id") REFERENCES "guild_general"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
