<?php

namespace App\Form;

use App\Entity\Client;
use App\Entity\Country;
use App\Entity\Shipping;
use App\Entity\Product;
use App\Entity\Order;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Symfony\Component\OptionsResolver\OptionsResolver;

class OrderType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('client', ClientType::class)
            ->add('product', EntityType::class, 
            [
                'class' => Product::class,
                'choice_label' => 'name',
                'multiple' => false,
                'expanded' => true,
            ])
             ->add('payment_method')
             ->addEventListener(
                FormEvents::PRE_SUBMIT,
                function (FormEvent $event) {
                    // dump($event);
                    /**
                     * If delivery address is untouched, clone billing
                     * address before form handling and validation.
                     * 
                     * https://symfony.com/doc/current/form/events.html
                     */
                    $data = $event->getData();
                    if (empty(implode("", $data['client']['shipping']))) {
                        
                        foreach ($data['client']['shipping'] as $key => $value){

                            $data['client']['shipping'][$key] = $data['client'][$key];
                        }

                    // }
                   
                }
                $event->setData($data);
            })
             
            // ->add('is_paid')
            // ->add('created_at')
        ;
    }
 
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Order::class,
            // enable/disable CSRF protection for this form
            'csrf_protection' => false,
            // the name of the hidden HTML field that stores the token
            'csrf_field_name' => '_token',
            // an arbitrary string used to generate the value of the token
            // using a different string for each form improves its security
            'csrf_token_id'   => 'order',
        ]);
    }
}
