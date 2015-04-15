<?php
class ControllerPaymentPo extends Controller {
	public function index() {
		$this->load->language('payment/po');
    	$data['button_confirm'] = $this->language->get('button_confirm');

		$data['continue'] = $this->url->link('checkout/success');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/po.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/payment/po.tpl', $data);
		} else {
			return $this->load->view('eccnew/template/payment/po.tpl', $data);
		}
		
		$this->render();
	}
	
	public function confirm() {
		if ($this->session->data['payment_method']['code'] == 'po') {
			$this->load->model('checkout/order');

			$this->model_checkout_order->addOrderHistory($this->session->data['order_id'], $this->config->get('po_order_status_id'));
		}
	}
}
?>