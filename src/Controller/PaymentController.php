<?php

namespace App\Controller;

use App\Entity\Order;
use App\Entity\Payment;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Form\PaymentType;
use Symfony\Component\HttpClient\HttpClient;

class PaymentController extends AbstractController
{
    /**
     * @Route("/payment/{id}", name="payment")
     */
    public function newPayment(Request $request, Order $order)
    {

        $payment = new Payment();
        
        // Form creation based on OrderType form in order to hydrate $Order object
        $form = $this->createForm(PaymentType::class, $payment);

        //hydration of $order
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $entityManager = $this->getDoctrine()->getManager(); 
            $entityManager->persist($payment);
            $entityManager->flush();

            try{

           \Stripe\Stripe::setApiKey('sk_test_51H2Xa3AMl99ZEXLiuERRMPAj9OBAdNJW2pAXJundQEUCVzSZIkZCUMLf1B4KUlpYhG13hqoiHnqjEHzojXLnVf5M00EFr8ZvrH');
           
           // Token is created using Stripe Checkout or Elements!
           // Get the payment token ID submitted by the form:
           $token = $request->request->get('stripeToken');
           $charge = \Stripe\PaymentIntent::create([
             'amount' => intval($order->getProduct()->getPrice())*100,
             'currency' => 'eur',
             'description' => 'Example charge',
             'source' => $token,
           ]);
          
           }
           catch(\Exception $e){
               dd("problem", $e->getMessage());
                   }
            

            $idApi = $order->getApiId();
            $this->updateApi($idApi);

            return $this->redirectToRoute('confirmation', [
                
            ]);
        }

        return $this->render('payment/index.html.twig', [
            'form' => $form->createView(),
            'email' => $order->getClient()->getEmail(),
            'amount' => $order->getProduct()->getPrice(),
        ]);
    }

    public function updateApi($idApi){
        // dd($idApi);
    try {

        $client = HttpClient::create();
        $response = $client->request('POST','https://api-commerce.simplon-roanne.com/order/'.$idApi.'/status', [

            'headers' => [
                "Accept" => 'application/json',
                "Authorization" => 'Bearer mJxTXVXMfRzLg6ZdhUhM4F6Eutcm1ZiPk4fNmvBMxyNR4ciRsc8v0hOmlzA0vTaX',
                "Content-Type" => 'application/json',
            ],

            'json' => [
                "status"=> 'PAID',
            ]
        ]);


        // dd($response);
        // return $response;

        $statusCode = $response->getStatusCode();
        
        // $statusCode = 200
        $contentType = $response->getHeaders()['content-type'][0];
        // $contentType = 'application/json'
        // dd($contentType);
        $content = $response->getContent();
     
        // $content = '{"id":521583, "name":"symfony-docs", ...}'
        $content = $response->toArray();
        // $content = ['id' => 521583, 'name' => 'symfony-docs', ...]
        

    } catch (\Exception $e) {
        dd($e);
     }
    }




    
}
