# E-Commerce

## Usage

#### API Docs

```
http://localhost:8080/swagger-ui.html
```

#### H2 Console

```
http://localhost:8080/h2-console
```

## Instruções de Implementação



No  projeto "ecommerce" desenvolvido no Checkpoint 2:

1 - Criar as entidades

Cliente
- id: Long (PK)
- nome: String(100) (NN)
- CEP: String(9)
- logradouro: String(100)
- numero: String(10)
- complemento: String(20)
- bairro: String(60)
- municipio: String(60)
- UF: String(2)
- data de dadastro: Instant (NN)
- ativo: boolean  (NN)

Pedido
- id: Long (PK)
- cliente: Cliente  (NN)
- data do pedido: Instant  (NN)
- data da entrega: Instant  (NN)
- valor total do pedido: BigDecimal
- situacao: Enum{ATIVO, CANCELADO, ENTREGUE} (NN)

Produto
- id: Long (PK)
- nome: String(100) (NN)
- data de dadastro: Instant (NN)

Item de Pedido
- id: Long (PK)
- pedido: Pedido (NN)
- produto: Produto (NN)
- quantidade: BigDecimal (NN)
- valor unitário: BigDecimal (NN)
- valor total: BigDecimal (NN)

2 - Criar scripts com massa de dados para o H2

3 - Criar camada de persistencia

4 - Criar endpoints CRUD usando DTOs para as entidades
