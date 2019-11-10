prepare.py config/master/ZjetsFF/prepare-ZjetsFakeFactor-EMPFlowJets.cfg
initialize.py config/master/ZjetsFF/initialize-ZjetsFakeFactor-EMPFlowJets.cfg
analyze.py config/master/ZjetsFF/analyze-ZjetsFakeFactor-EMPFlowJets.cfg --debug


submit.py config/master/ZjetsFF/analyze-ZjetsFakeFactor-EMPFlowJets.cfg --jobs  config/jobLists/ZjetsFF/ZjetsFF-jobList.txt --identifier ZjetsFF --allowArgChanges --time 130 --memory 3500

tqmerge -t analyze -o ZjetsFF.root batchOutput/unmerged_ZjetsFF/*root

visualize.py config/master/ZjetsFF/visualize-ZjetsFakeFactor-EMPFlowJets_mc16a.cfg
visualize.py config/master/ZjetsFF/visualize-ZjetsFakeFactor-EMPFlowJets_mc16d.cfg
visualize.py config/master/ZjetsFF/visualize-ZjetsFakeFactor-EMPFlowJets_mc16e.cfg
visualize.py config/master/ZjetsFF/visualize-ZjetsFakeFactor-EMPFlowJets_run2.cfg
