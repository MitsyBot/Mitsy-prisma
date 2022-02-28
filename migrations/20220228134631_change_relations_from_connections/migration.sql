-- AlterTable
ALTER TABLE "user_connections" ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "tokens" DROP NOT NULL,
ALTER COLUMN "tokens" SET DATA TYPE TEXT,
ALTER COLUMN "config" DROP NOT NULL,
ALTER COLUMN "config" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "user_connections" ADD CONSTRAINT "user_connections_id_fkey" FOREIGN KEY ("id") REFERENCES "user_config"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
