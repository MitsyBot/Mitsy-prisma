/*
  Warnings:

  - You are about to drop the `CometTransaction` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "CometTransaction";

-- CreateTable
CREATE TABLE "comet_transactions" (
    "id" SERIAL NOT NULL,
    "reason" TEXT NOT NULL,
    "given_by" TEXT NOT NULL,
    "received_by" TEXT NOT NULL,
    "given_at" DOUBLE PRECISION,
    "quantity" DECIMAL(65,30) NOT NULL,

    CONSTRAINT "comet_transactions_pkey" PRIMARY KEY ("id")
);
