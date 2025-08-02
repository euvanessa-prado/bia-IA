# Informações do Ambiente ECS - Projeto BIA

## Configuração Atual (Atualizado em 02/08/2025)

### Cluster ECS
- **Nome:** `bia-ia`
- **Status:** ACTIVE
- **ARN:** `arn:aws:ecs:us-east-1:448522291635:cluster/bia-ia`

### Serviço ECS
- **Nome:** `service-bia-ia`
- **Status:** ACTIVE
- **Desired Count:** 2
- **Running Count:** 2
- **Pending Count:** 0
- **ARN:** `arn:aws:ecs:us-east-1:448522291635:service/bia-ia/service-bia-ia`

### Task Definition
- **Família:** `task-def-bia-ia-alb`
- **Revisão Atual:** `4`
- **ARN Completo:** `arn:aws:ecs:us-east-1:448522291635:task-definition/task-def-bia-ia-alb:4`

### Load Balancer
- **Target Group ARN:** `arn:aws:elasticloadbalancing:us-east-1:448522291635:targetgroup/tg-load-balancer/c9b30e3b42a15c36`
- **Container Name:** `bia`
- **Container Port:** `8080`

### Configurações do Script deploy-ecs.sh
```bash
DEFAULT_REGION="us-east-1"
DEFAULT_ECR_REPO="bia"
DEFAULT_CLUSTER="bia-ia"
DEFAULT_SERVICE="service-bia-ia"
DEFAULT_TASK_FAMILY="task-def-bia-ia-alb"
```

### Deployment Strategy
- **Tipo:** ROLLING
- **Maximum Percent:** 100%
- **Minimum Healthy Percent:** 50%
- **Circuit Breaker:** Desabilitado

### Capacity Provider
- **Nome:** `Infra-ECS-Cluster-bia-ia-d51365b9-AsgCapacityProvider-IrNZORiPVKOM`
- **Weight:** 1
- **Base:** 0

### Placement Strategy
1. **Spread por Availability Zone:** `attribute:ecs.availability-zone`
2. **Spread por Instance ID:** `instanceId`

## Status do Último Deploy
- **Data:** 02/08/2025 16:58:18 UTC
- **Status:** Deployment completed
- **Estado:** Steady state alcançado
- **Tasks em execução:** 2/2
- **Commit Hash:** 6074d60
- **Imagem:** 448522291635.dkr.ecr.us-east-1.amazonaws.com/bia:6074d60

## Comandos Úteis

### Deploy usando o script
```bash
./deploy-ecs.sh deploy
```

### Rollback para versão anterior
```bash
./deploy-ecs.sh rollback -t <commit-hash>
```

### Listar versões disponíveis
```bash
./deploy-ecs.sh list-versions
```

### Verificar status do serviço
```bash
aws ecs describe-services --cluster bia-ia --services service-bia-ia --region us-east-1
```

### Verificar tasks em execução
```bash
aws ecs list-tasks --cluster bia-ia --service-name service-bia-ia --region us-east-1
```

## Observações
- O ambiente está configurado com Application Load Balancer
- Utiliza EC2 instances como capacity provider
- Health checks configurados no Target Group
- Deploy strategy permite zero-downtime deployments
