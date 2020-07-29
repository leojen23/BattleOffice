<?php

namespace App\Form;

use App\Entity\Client;
use App\Entity\Country;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ClientType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstname')
            ->add('lastname')
            ->add('address')
            ->add('additional_address')
            ->add('city')
            ->add('postcode')
            ->add('phone')
            ->add('email')
            ->add('country', EntityType::class, 
            [
                'placeholder' => 'Select a country',
                'class' => Country::class,
                'choice_label' => 'name',
                'multiple' => false,
            ])
            // ->add('created_at')
            
            ->add('shipping', ShippingType::class)


            
            // ->add('client_order')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Client::class,
        ]);
    }
}
