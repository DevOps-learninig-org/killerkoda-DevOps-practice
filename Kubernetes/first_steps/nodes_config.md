First of all - useful links:
- [Kubernetes Components](https://kubernetes.io/docs/concepts/overview/components/)
- [Nodes](https://kubernetes.io/docs/concepts/architecture/nodes/)
- [Command line tool (kubectl) manual](https://kubernetes.io/docs/reference/kubectl/)
- `k nodes -h`{{exec}}

Task list:
- Get list of nodes in Kubernetes cluster
- Get configuration in yaml format

<details>
<summary>Hints for the task</summary>
```
k get nodes
```{{exec}}
```
k config view
```{{exec}}
</details>
