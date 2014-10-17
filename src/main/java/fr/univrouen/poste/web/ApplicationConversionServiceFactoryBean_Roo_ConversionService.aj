// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.web;

import fr.univrouen.poste.domain.AppliConfig;
import fr.univrouen.poste.domain.CommissionEntry;
import fr.univrouen.poste.domain.CommissionExcel;
import fr.univrouen.poste.domain.GalaxieExcel;
import fr.univrouen.poste.domain.LogAuth;
import fr.univrouen.poste.domain.LogFile;
import fr.univrouen.poste.domain.LogImportCommission;
import fr.univrouen.poste.domain.LogImportGalaxie;
import fr.univrouen.poste.domain.LogMail;
import fr.univrouen.poste.domain.PosteAPourvoir;
import fr.univrouen.poste.domain.PosteCandidature;
import fr.univrouen.poste.domain.User;
import fr.univrouen.poste.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<AppliConfig, String> ApplicationConversionServiceFactoryBean.getAppliConfigToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.AppliConfig, java.lang.String>() {
            public String convert(AppliConfig appliConfig) {
                return new StringBuilder().append(appliConfig.getCacheTitre()).append(' ').append(appliConfig.getCacheImageUrl()).append(' ').append(appliConfig.getCachePiedPage()).append(' ').append(appliConfig.getCacheMailFrom()).toString();
            }
        };
    }
    
    public Converter<Long, AppliConfig> ApplicationConversionServiceFactoryBean.getIdToAppliConfigConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.AppliConfig>() {
            public fr.univrouen.poste.domain.AppliConfig convert(java.lang.Long id) {
                return AppliConfig.findAppliConfig(id);
            }
        };
    }
    
    public Converter<String, AppliConfig> ApplicationConversionServiceFactoryBean.getStringToAppliConfigConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.AppliConfig>() {
            public fr.univrouen.poste.domain.AppliConfig convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AppliConfig.class);
            }
        };
    }
    
    public Converter<CommissionEntry, String> ApplicationConversionServiceFactoryBean.getCommissionEntryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.CommissionEntry, java.lang.String>() {
            public String convert(CommissionEntry commissionEntry) {
                return new StringBuilder().append(commissionEntry.getNumPoste()).append(' ').append(commissionEntry.getEmail()).append(' ').append(commissionEntry.getNom()).append(' ').append(commissionEntry.getPrenom()).toString();
            }
        };
    }
    
    public Converter<Long, CommissionEntry> ApplicationConversionServiceFactoryBean.getIdToCommissionEntryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.CommissionEntry>() {
            public fr.univrouen.poste.domain.CommissionEntry convert(java.lang.Long id) {
                return CommissionEntry.findCommissionEntry(id);
            }
        };
    }
    
    public Converter<String, CommissionEntry> ApplicationConversionServiceFactoryBean.getStringToCommissionEntryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.CommissionEntry>() {
            public fr.univrouen.poste.domain.CommissionEntry convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CommissionEntry.class);
            }
        };
    }
    
    public Converter<CommissionExcel, String> ApplicationConversionServiceFactoryBean.getCommissionExcelToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.CommissionExcel, java.lang.String>() {
            public String convert(CommissionExcel commissionExcel) {
                return new StringBuilder().append(commissionExcel.getFilename()).append(' ').append(commissionExcel.getFile()).append(' ').append(commissionExcel.getCreation()).toString();
            }
        };
    }
    
    public Converter<Long, CommissionExcel> ApplicationConversionServiceFactoryBean.getIdToCommissionExcelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.CommissionExcel>() {
            public fr.univrouen.poste.domain.CommissionExcel convert(java.lang.Long id) {
                return CommissionExcel.findCommissionExcel(id);
            }
        };
    }
    
    public Converter<String, CommissionExcel> ApplicationConversionServiceFactoryBean.getStringToCommissionExcelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.CommissionExcel>() {
            public fr.univrouen.poste.domain.CommissionExcel convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CommissionExcel.class);
            }
        };
    }
    
    public Converter<GalaxieExcel, String> ApplicationConversionServiceFactoryBean.getGalaxieExcelToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.GalaxieExcel, java.lang.String>() {
            public String convert(GalaxieExcel galaxieExcel) {
                return new StringBuilder().append(galaxieExcel.getFilename()).append(' ').append(galaxieExcel.getFile()).append(' ').append(galaxieExcel.getCreation()).toString();
            }
        };
    }
    
    public Converter<Long, GalaxieExcel> ApplicationConversionServiceFactoryBean.getIdToGalaxieExcelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.GalaxieExcel>() {
            public fr.univrouen.poste.domain.GalaxieExcel convert(java.lang.Long id) {
                return GalaxieExcel.findGalaxieExcel(id);
            }
        };
    }
    
    public Converter<String, GalaxieExcel> ApplicationConversionServiceFactoryBean.getStringToGalaxieExcelConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.GalaxieExcel>() {
            public fr.univrouen.poste.domain.GalaxieExcel convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), GalaxieExcel.class);
            }
        };
    }
    
    public Converter<LogAuth, String> ApplicationConversionServiceFactoryBean.getLogAuthToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.LogAuth, java.lang.String>() {
            public String convert(LogAuth logAuth) {
                return new StringBuilder().append(logAuth.getActionDate()).append(' ').append(logAuth.getUserId()).append(' ').append(logAuth.getIp()).append(' ').append(logAuth.getAction()).toString();
            }
        };
    }
    
    public Converter<Long, LogAuth> ApplicationConversionServiceFactoryBean.getIdToLogAuthConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.LogAuth>() {
            public fr.univrouen.poste.domain.LogAuth convert(java.lang.Long id) {
                return LogAuth.findLogAuth(id);
            }
        };
    }
    
    public Converter<String, LogAuth> ApplicationConversionServiceFactoryBean.getStringToLogAuthConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.LogAuth>() {
            public fr.univrouen.poste.domain.LogAuth convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogAuth.class);
            }
        };
    }
    
    public Converter<LogFile, String> ApplicationConversionServiceFactoryBean.getLogFileToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.LogFile, java.lang.String>() {
            public String convert(LogFile logFile) {
                return new StringBuilder().append(logFile.getActionDate()).append(' ').append(logFile.getUserId()).append(' ').append(logFile.getNumEmploi()).append(' ').append(logFile.getNumCandidat()).toString();
            }
        };
    }
    
    public Converter<Long, LogFile> ApplicationConversionServiceFactoryBean.getIdToLogFileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.LogFile>() {
            public fr.univrouen.poste.domain.LogFile convert(java.lang.Long id) {
                return LogFile.findLogFile(id);
            }
        };
    }
    
    public Converter<String, LogFile> ApplicationConversionServiceFactoryBean.getStringToLogFileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.LogFile>() {
            public fr.univrouen.poste.domain.LogFile convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogFile.class);
            }
        };
    }
    
    public Converter<LogImportCommission, String> ApplicationConversionServiceFactoryBean.getLogImportCommissionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.LogImportCommission, java.lang.String>() {
            public String convert(LogImportCommission logImportCommission) {
                return new StringBuilder().append(logImportCommission.getActionDate()).append(' ').append(logImportCommission.getMessage()).append(' ').append(logImportCommission.getStatus()).toString();
            }
        };
    }
    
    public Converter<Long, LogImportCommission> ApplicationConversionServiceFactoryBean.getIdToLogImportCommissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.LogImportCommission>() {
            public fr.univrouen.poste.domain.LogImportCommission convert(java.lang.Long id) {
                return LogImportCommission.findLogImportCommission(id);
            }
        };
    }
    
    public Converter<String, LogImportCommission> ApplicationConversionServiceFactoryBean.getStringToLogImportCommissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.LogImportCommission>() {
            public fr.univrouen.poste.domain.LogImportCommission convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogImportCommission.class);
            }
        };
    }
    
    public Converter<LogImportGalaxie, String> ApplicationConversionServiceFactoryBean.getLogImportGalaxieToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.LogImportGalaxie, java.lang.String>() {
            public String convert(LogImportGalaxie logImportGalaxie) {
                return new StringBuilder().append(logImportGalaxie.getActionDate()).append(' ').append(logImportGalaxie.getMessage()).append(' ').append(logImportGalaxie.getStatus()).toString();
            }
        };
    }
    
    public Converter<Long, LogImportGalaxie> ApplicationConversionServiceFactoryBean.getIdToLogImportGalaxieConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.LogImportGalaxie>() {
            public fr.univrouen.poste.domain.LogImportGalaxie convert(java.lang.Long id) {
                return LogImportGalaxie.findLogImportGalaxie(id);
            }
        };
    }
    
    public Converter<String, LogImportGalaxie> ApplicationConversionServiceFactoryBean.getStringToLogImportGalaxieConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.LogImportGalaxie>() {
            public fr.univrouen.poste.domain.LogImportGalaxie convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogImportGalaxie.class);
            }
        };
    }
    
    public Converter<LogMail, String> ApplicationConversionServiceFactoryBean.getLogMailToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.univrouen.poste.domain.LogMail, java.lang.String>() {
            public String convert(LogMail logMail) {
                return new StringBuilder().append(logMail.getActionDate()).append(' ').append(logMail.getMailTo()).append(' ').append(logMail.getMessage()).append(' ').append(logMail.getStatus()).toString();
            }
        };
    }
    
    public Converter<Long, LogMail> ApplicationConversionServiceFactoryBean.getIdToLogMailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.LogMail>() {
            public fr.univrouen.poste.domain.LogMail convert(java.lang.Long id) {
                return LogMail.findLogMail(id);
            }
        };
    }
    
    public Converter<String, LogMail> ApplicationConversionServiceFactoryBean.getStringToLogMailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.LogMail>() {
            public fr.univrouen.poste.domain.LogMail convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogMail.class);
            }
        };
    }
    
    public Converter<Long, PosteAPourvoir> ApplicationConversionServiceFactoryBean.getIdToPosteAPourvoirConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.PosteAPourvoir>() {
            public fr.univrouen.poste.domain.PosteAPourvoir convert(java.lang.Long id) {
                return PosteAPourvoir.findPosteAPourvoir(id);
            }
        };
    }
    
    public Converter<String, PosteAPourvoir> ApplicationConversionServiceFactoryBean.getStringToPosteAPourvoirConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.PosteAPourvoir>() {
            public fr.univrouen.poste.domain.PosteAPourvoir convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PosteAPourvoir.class);
            }
        };
    }
    
    public Converter<Long, PosteCandidature> ApplicationConversionServiceFactoryBean.getIdToPosteCandidatureConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.PosteCandidature>() {
            public fr.univrouen.poste.domain.PosteCandidature convert(java.lang.Long id) {
                return PosteCandidature.findPosteCandidature(id);
            }
        };
    }
    
    public Converter<String, PosteCandidature> ApplicationConversionServiceFactoryBean.getStringToPosteCandidatureConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.PosteCandidature>() {
            public fr.univrouen.poste.domain.PosteCandidature convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PosteCandidature.class);
            }
        };
    }
    
    public Converter<Long, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.univrouen.poste.domain.User>() {
            public fr.univrouen.poste.domain.User convert(java.lang.Long id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.univrouen.poste.domain.User>() {
            public fr.univrouen.poste.domain.User convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), User.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAppliConfigToStringConverter());
        registry.addConverter(getIdToAppliConfigConverter());
        registry.addConverter(getStringToAppliConfigConverter());
        registry.addConverter(getCommissionEntryToStringConverter());
        registry.addConverter(getIdToCommissionEntryConverter());
        registry.addConverter(getStringToCommissionEntryConverter());
        registry.addConverter(getCommissionExcelToStringConverter());
        registry.addConverter(getIdToCommissionExcelConverter());
        registry.addConverter(getStringToCommissionExcelConverter());
        registry.addConverter(getGalaxieExcelToStringConverter());
        registry.addConverter(getIdToGalaxieExcelConverter());
        registry.addConverter(getStringToGalaxieExcelConverter());
        registry.addConverter(getLogAuthToStringConverter());
        registry.addConverter(getIdToLogAuthConverter());
        registry.addConverter(getStringToLogAuthConverter());
        registry.addConverter(getLogFileToStringConverter());
        registry.addConverter(getIdToLogFileConverter());
        registry.addConverter(getStringToLogFileConverter());
        registry.addConverter(getLogImportCommissionToStringConverter());
        registry.addConverter(getIdToLogImportCommissionConverter());
        registry.addConverter(getStringToLogImportCommissionConverter());
        registry.addConverter(getLogImportGalaxieToStringConverter());
        registry.addConverter(getIdToLogImportGalaxieConverter());
        registry.addConverter(getStringToLogImportGalaxieConverter());
        registry.addConverter(getLogMailToStringConverter());
        registry.addConverter(getIdToLogMailConverter());
        registry.addConverter(getStringToLogMailConverter());
        registry.addConverter(getPosteAPourvoirToStringConverter());
        registry.addConverter(getIdToPosteAPourvoirConverter());
        registry.addConverter(getStringToPosteAPourvoirConverter());
        registry.addConverter(getPosteCandidatureToStringConverter());
        registry.addConverter(getIdToPosteCandidatureConverter());
        registry.addConverter(getStringToPosteCandidatureConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
