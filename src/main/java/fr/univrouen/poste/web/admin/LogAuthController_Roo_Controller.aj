// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.web.admin;

import fr.univrouen.poste.domain.LogAuth;
import fr.univrouen.poste.web.admin.LogAuthController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect LogAuthController_Roo_Controller {
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String LogAuthController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("logauth", LogAuth.findLogAuth(id));
        uiModel.addAttribute("itemId", id);
        return "admin/logauths/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String LogAuthController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("logauths", LogAuth.findLogAuthEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) LogAuth.countLogAuths() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("logauths", LogAuth.findAllLogAuths(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "admin/logauths/list";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String LogAuthController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        LogAuth logAuth = LogAuth.findLogAuth(id);
        logAuth.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/admin/logauths";
    }
    
    void LogAuthController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("logAuth_actiondate_date_format", "dd/MM/yyyy HH:mm");
    }
    
}
