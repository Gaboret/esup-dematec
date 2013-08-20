// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.web.admin;

import fr.univrouen.poste.domain.LogImportGalaxie;
import fr.univrouen.poste.web.admin.LogImportGalaxieController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect LogImportGalaxieController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByStatusEquals", "form" }, method = RequestMethod.GET)
    public String LogImportGalaxieController.findLogImportGalaxiesByStatusEqualsForm(Model uiModel) {
        return "admin/logimportgalaxies/findLogImportGalaxiesByStatusEquals";
    }
    
    @RequestMapping(params = "find=ByStatusEquals", method = RequestMethod.GET)
    public String LogImportGalaxieController.findLogImportGalaxiesByStatusEquals(@RequestParam("status") String status, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("logimportgalaxies", LogImportGalaxie.findLogImportGalaxiesByStatusEquals(status, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) LogImportGalaxie.countFindLogImportGalaxiesByStatusEquals(status) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("logimportgalaxies", LogImportGalaxie.findLogImportGalaxiesByStatusEquals(status, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "admin/logimportgalaxies/list";
    }
    
}
