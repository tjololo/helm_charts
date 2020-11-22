lint:
	helm lint chart_sources/*

package: lint
	helm package chart_sources/*

index: package
	helm repo index --url https://tjololo.github.io/helm_charts .