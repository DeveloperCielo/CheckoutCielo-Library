<%@page import="br.com.cbmp.ecommerce.util.web.WebUtils"%>
<%@page import="br.com.cbmp.ecommerce.pedido.Pedido"%>
<%@page import="br.com.cbmp.ecommerce.resposta.Transacao"%>
<%@ page errorPage="novoPedidoErro.jsp" %>

<%
	// solicita cria��o da transa��o
	Pedido pedido = new WebUtils(request).recuperarUltimoPedido();		
	Transacao transacao = pedido.criarTransacao();
	
	// obt�m URL de redirecionamento
	String urlRedirecionamento;
	urlRedirecionamento = transacao.getUrlAutenticacao();
	
	// redireciona o fluxo para a Cielo
	response.sendRedirect(urlRedirecionamento);
%>