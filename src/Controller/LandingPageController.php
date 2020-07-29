<?php

namespace App\Controller;

use App\Entity\Client;
use App\Entity\Order;
use App\Entity\Shipping;

use App\Entity\Product;
use App\Form\ClientType;
use App\Form\ShippingType;
use App\Form\ProductType;
use App\Form\Entity;
use App\Form\OrderType;


use App\Manager\OrderManager;
use App\Repository\ClientRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Form;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LandingPageController extends AbstractController
{
    /**
     * @Route("/", name="landing_page")
     * @throws \Exception
     */

    public function index(Request $request)
    {
        $order = new Order();

        $form = $this->createForm(OrderType::class, $order);
        $form->handleRequest($request);
        
        if ($form->isSubmitted() && $form->isValid()) 
        
        {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($order);
            $entityManager->flush();
            dd($order);
            return $this->redirectToRoute('landing_page');
        }
        
        // dd($request->request);
        return $this->render('landing_page/index_new.html.twig', [
             'order' => $order,
             
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/confirmation", name="confirmation")
     */
    public function confirmation()
    {
        return $this->render('landing_page/confirmation.html.twig', [

        ]);
    }





}
