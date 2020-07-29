<?php

namespace App\Entity;

use App\Repository\OrderRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=OrderRepository::class)
 * @ORM\Table(name="`order`")
 */
class Order
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, nullable=true, options={"default":"Stripe"})
     */
    private $payment_method;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $is_paid;

    /**
     * @ORM\Column(type="datetime", nullable=true, options={"default":false})
     */
    private $created_at;

    /**
     * @ORM\ManyToOne(targetEntity=Product::class, inversedBy="orders")
     */
    private $product;

    /**
     * @ORM\OneToOne(targetEntity=Client::class, inversedBy="client_order", cascade={"persist", "remove"})
     */
    private $client;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPaymentMethod(): ?string
    {
        return $this->payment_method;
    }

    public function setPaymentMethod(?string $payment_method): self
    {
        $this->payment_method = $payment_method;

        return $this;
    }

    public function getIsPaid(): ?bool
    {
        return $this->is_paid;
    }

    public function setIsPaid(?bool $is_paid): self
    {
        $this->is_paid = $is_paid;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->created_at;
    }

    public function setCreatedAt(?\DateTimeInterface $created_at): self
    {
        $this->created_at = $created_at;

        return $this;
    }

    public function getProduct(): ?Product
    {
        return $this->product;
    }

    public function setProduct(?Product $product): self
    {
        $this->product = $product;

        return $this;
    }

    public function getClient(): ?Client
    {
        return $this->client;
    }

    public function setClient(?Client $client): self
    {
        $this->client = $client;

        return $this;
    }

   
}
