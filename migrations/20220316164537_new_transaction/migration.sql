-- CreateTable
CREATE TABLE "CometTransaction" (
    "id" SERIAL NOT NULL,
    "reason" TEXT NOT NULL,
    "given_by" TEXT NOT NULL,
    "received_by" TEXT NOT NULL,
    "given_at" TEXT NOT NULL,
    "quantity" DECIMAL(65,30) NOT NULL,

    CONSTRAINT "CometTransaction_pkey" PRIMARY KEY ("id")
);
