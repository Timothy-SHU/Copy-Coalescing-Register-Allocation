; ModuleID = 'drivers/acpi/acpica/nspredef.c'
source_filename = "drivers/acpi/acpica/nspredef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@acpi_gbl_predefined_methods = hidden constant [340 x %union.acpi_predefined_info] [%union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC0", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC1", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC2", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC3", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC4", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC5", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC6", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC7", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC8", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC9", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ADR", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AEI", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL0", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL1", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL2", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL3", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL4", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL5", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL6", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL7", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL8", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL9", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALI", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ART", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\09 \02\02", i16 11, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BBN", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BCL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BCM", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BCT", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BDN", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BFS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BIF", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\09\04", i16 4, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BIX", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0D\02\10\04", i16 4, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BLT", i16 587, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMA", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMC", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMS", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BPC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BPS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BPT", i16 33, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BQC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BST", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BTH", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BTM", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BTP", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CBA", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CBR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CCA", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CDM", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CID", i16 0, i8 22 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\06\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CLS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CPC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\0A\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CR3", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CRS", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CRT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\05\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CST", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\06\08\01\02", i16 3, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CWS", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DCK", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DCS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DDC", i16 9, i8 10 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DDN", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DEP", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DGS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DIS", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DLM", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0A \01(", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DMA", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DOD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DOS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0C\08\01\10", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSM", i16 16988, i8 63 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSW", i16 587, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DTI", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EC_", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EDL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ0", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ1", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ2", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ3", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ4", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJD", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ERR", i16 651, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EVT", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FDE", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FDI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\10\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FDM", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FIF", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FIT", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FIX", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FPS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\09\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FSL", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FST", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GAI", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GCP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GHL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GLK", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GPD", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GPE", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GRT", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GSB", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GTF", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GTM", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GTS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GWS", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HID", i16 0, i8 6 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HMA", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HOT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HPP", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HPX", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\08\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HRV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_IFT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_INI", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_IRC", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LCK", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LID", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LPD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\09\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LPI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0B\02\03\0E", i16 10, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LSI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LSR", i16 74, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\01\08", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LSW", i16 1611, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MAT", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MBM", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\08\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MLS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\04\01\08", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MSG", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MSM", i16 4684, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MTL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NBS", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NCH", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NIC", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NIG", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NIH", i16 25, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NTT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OFF", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ON_", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OS_", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OSC", i16 12892, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OST", i16 1611, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PAI", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PCL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PCT", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\08\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PDC", i16 25, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PDL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PIC", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PIF", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\04", i16 3, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PLD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\08\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PMC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\0B\04", i16 3, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PMD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PMM", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PPC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PPE", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR0", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR1", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR2", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR3", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRE", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01 \01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRS", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRT", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\07\04\02\02", i16 546, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRW", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\03\02\12\02", i16 32, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS0", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS1", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS2", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS3", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\05\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSE", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSR", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\02\06\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSW", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PTC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\08\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PTP", i16 74, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PTS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PUR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PXM", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RDI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0B\02\01 ", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_REG", i16 74, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_REV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RMV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ROM", i16 74, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RST", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RTV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S0_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S1_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S2_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S3_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S4_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S5_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S1D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S2D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S3D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S4D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S0W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S1W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S2W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S3W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S4W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBA", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\01\08", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBR", i16 587, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\0A", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBT", i16 588, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\0A", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBW", i16 4685, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\0A\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SCP", i16 -32759, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SDD", i16 25, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SEG", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SHL", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SLI", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SPD", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SRS", i16 25, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SRT", i16 25, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SRV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SST", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STA", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STM", i16 1755, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STP", i16 74, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STR", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STV", i16 74, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SUB", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SUN", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SWS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TC1", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TC2", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TDL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TFP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TIP", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TIV", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TMP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TPC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TPT", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TRT", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04 \02\02", i16 6, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\05\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSN", i16 0, i8 32 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TST", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TTS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TZD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TZM", i16 0, i8 32 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TZP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UID", i16 0, i8 6 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UPC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UPD", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UPP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_VPO", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WAK", i16 9, i8 19 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WDG", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WED", i16 9, i8 14 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WPC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WPP", i16 0, i8 2 }> }, %union.acpi_predefined_info zeroinitializer], align 16, !dbg !0
@acpi_gbl_disable_auto_repair = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"nspredef\00", align 1, !dbg !825
@.str = private unnamed_addr constant [61 x i8] c"Invalid return type - Found a Namespace node [%4.4s] type %s\00", align 1, !dbg !805
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected return object of type %s\00", align 1, !dbg !810
@.str.2 = private unnamed_addr constant [45 x i8] c"Return type mismatch - found %s, expected %s\00", align 1, !dbg !815
@.str.3 = private unnamed_addr constant [65 x i8] c"Return Package type mismatch at index %u - found %s, expected %s\00", align 1, !dbg !820
@.str.4 = private unnamed_addr constant [67 x i8] c"Return type mismatch - unexpected reference object type [%s] %2.2X\00", align 1, !dbg !829

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_check_return_value(ptr noundef %node, ptr noundef %info, i32 noundef %user_param_count, i32 noundef %return_status, ptr noundef %return_object_ptr) #0 align 16 !dbg !891 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %user_param_count.addr = alloca i32, align 4
  %return_status.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %predefined = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !916, metadata !DIExpression()), !dbg !924
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !917, metadata !DIExpression()), !dbg !925
  store i32 %user_param_count, ptr %user_param_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %user_param_count.addr, metadata !918, metadata !DIExpression()), !dbg !926
  store i32 %return_status, ptr %return_status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %return_status.addr, metadata !919, metadata !DIExpression()), !dbg !927
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !920, metadata !DIExpression()), !dbg !928
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !929
  call void @llvm.dbg.declare(metadata ptr %status, metadata !921, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 8, ptr %predefined) #4, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %predefined, metadata !922, metadata !DIExpression()), !dbg !932
  %0 = load ptr, ptr %info.addr, align 8, !dbg !933
  %predefined1 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %0, i32 0, i32 6, !dbg !934
  %1 = load ptr, ptr %predefined1, align 8, !dbg !934
  store ptr %1, ptr %predefined, align 8, !dbg !935
  %2 = load ptr, ptr %predefined, align 8, !dbg !936
  %tobool = icmp ne ptr %2, null, !dbg !936
  br i1 %tobool, label %if.end, label %if.then, !dbg !938

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !939

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %return_status.addr, align 4, !dbg !941
  %cmp = icmp ne i32 %3, 0, !dbg !943
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !944

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %return_status.addr, align 4, !dbg !945
  %cmp2 = icmp ne i32 %4, 16385, !dbg !946
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !947

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i8, ptr @acpi_gbl_disable_auto_repair, align 1, !dbg !950
  %conv = zext i8 %5 to i32, !dbg !950
  %tobool5 = icmp ne i32 %conv, 0, !dbg !950
  br i1 %tobool5, label %if.then12, label %lor.lhs.false, !dbg !952

lor.lhs.false:                                    ; preds = %if.end4
  %6 = load ptr, ptr %predefined, align 8, !dbg !953
  %expected_btypes = getelementptr inbounds %struct.acpi_name_info, ptr %6, i32 0, i32 2, !dbg !954
  %7 = load i8, ptr %expected_btypes, align 1, !dbg !954
  %tobool6 = icmp ne i8 %7, 0, !dbg !953
  br i1 %tobool6, label %lor.lhs.false7, label %if.then12, !dbg !955

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %predefined, align 8, !dbg !956
  %expected_btypes8 = getelementptr inbounds %struct.acpi_name_info, ptr %8, i32 0, i32 2, !dbg !957
  %9 = load i8, ptr %expected_btypes8, align 1, !dbg !957
  %conv9 = zext i8 %9 to i32, !dbg !956
  %cmp10 = icmp eq i32 %conv9, 63, !dbg !958
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !959

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end4
  store i32 0, ptr %retval, align 4, !dbg !960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !960

if.end13:                                         ; preds = %lor.lhs.false7
  %10 = load ptr, ptr %info.addr, align 8, !dbg !962
  %11 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !963
  %12 = load ptr, ptr %predefined, align 8, !dbg !964
  %expected_btypes14 = getelementptr inbounds %struct.acpi_name_info, ptr %12, i32 0, i32 2, !dbg !965
  %13 = load i8, ptr %expected_btypes14, align 1, !dbg !965
  %conv15 = zext i8 %13 to i32, !dbg !964
  %call = call i32 @acpi_ns_check_object_type(ptr noundef %10, ptr noundef %11, i32 noundef %conv15, i32 noundef -1) #5, !dbg !966
  store i32 %call, ptr %status, align 4, !dbg !967
  %14 = load i32, ptr %status, align 4, !dbg !968
  %tobool16 = icmp ne i32 %14, 0, !dbg !968
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !970

if.then17:                                        ; preds = %if.end13
  br label %exit, !dbg !971

if.end18:                                         ; preds = %if.end13
  %15 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !973
  %16 = load ptr, ptr %15, align 8, !dbg !975
  %tobool19 = icmp ne ptr %16, null, !dbg !976
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !977

if.then20:                                        ; preds = %if.end18
  br label %exit, !dbg !978

if.end21:                                         ; preds = %if.end18
  %17 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !980
  %18 = load ptr, ptr %17, align 8, !dbg !982
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %18, i32 0, i32 2, !dbg !983
  %19 = load i8, ptr %type, align 1, !dbg !983
  %conv22 = zext i8 %19 to i32, !dbg !984
  %cmp23 = icmp eq i32 %conv22, 4, !dbg !985
  br i1 %cmp23, label %if.then25, label %if.end37, !dbg !986

if.then25:                                        ; preds = %if.end21
  %20 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !987
  %21 = load ptr, ptr %20, align 8, !dbg !989
  %22 = load ptr, ptr %info.addr, align 8, !dbg !990
  %parent_package = getelementptr inbounds %struct.acpi_evaluate_info, ptr %22, i32 0, i32 8, !dbg !991
  store ptr %21, ptr %parent_package, align 8, !dbg !992
  %23 = load ptr, ptr %info.addr, align 8, !dbg !993
  %24 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !994
  %call26 = call i32 @acpi_ns_check_package(ptr noundef %23, ptr noundef %24) #5, !dbg !995
  store i32 %call26, ptr %status, align 4, !dbg !996
  %25 = load i32, ptr %status, align 4, !dbg !997
  %tobool27 = icmp ne i32 %25, 0, !dbg !997
  br i1 %tobool27, label %if.then28, label %if.end36, !dbg !999

if.then28:                                        ; preds = %if.then25
  %26 = load i32, ptr %status, align 4, !dbg !1000
  %cmp29 = icmp ne i32 %26, 12291, !dbg !1003
  br i1 %cmp29, label %land.lhs.true31, label %if.end35, !dbg !1004

land.lhs.true31:                                  ; preds = %if.then28
  %27 = load i32, ptr %status, align 4, !dbg !1005
  %cmp32 = icmp ne i32 %27, 12292, !dbg !1006
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1007

if.then34:                                        ; preds = %land.lhs.true31
  br label %exit, !dbg !1008

if.end35:                                         ; preds = %land.lhs.true31, %if.then28
  br label %if.end36, !dbg !1010

if.end36:                                         ; preds = %if.end35, %if.then25
  br label %if.end37, !dbg !1011

if.end37:                                         ; preds = %if.end36, %if.end21
  %28 = load ptr, ptr %info.addr, align 8, !dbg !1012
  %29 = load ptr, ptr %node.addr, align 8, !dbg !1013
  %30 = load i32, ptr %status, align 4, !dbg !1014
  %31 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1015
  %call38 = call i32 @acpi_ns_complex_repairs(ptr noundef %28, ptr noundef %29, i32 noundef %30, ptr noundef %31) #5, !dbg !1016
  store i32 %call38, ptr %status, align 4, !dbg !1017
  br label %exit, !dbg !1018

exit:                                             ; preds = %if.end37, %if.then34, %if.then20, %if.then17
  call void @llvm.dbg.label(metadata !923), !dbg !1019
  %32 = load i32, ptr %status, align 4, !dbg !1020
  %tobool39 = icmp ne i32 %32, 0, !dbg !1020
  br i1 %tobool39, label %if.then42, label %lor.lhs.false40, !dbg !1022

lor.lhs.false40:                                  ; preds = %exit
  %33 = load ptr, ptr %info.addr, align 8, !dbg !1023
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %33, i32 0, i32 9, !dbg !1024
  %34 = load i32, ptr %return_flags, align 8, !dbg !1024
  %and = and i32 %34, 1, !dbg !1025
  %tobool41 = icmp ne i32 %and, 0, !dbg !1025
  br i1 %tobool41, label %if.then42, label %if.end45, !dbg !1026

if.then42:                                        ; preds = %lor.lhs.false40, %exit
  %35 = load ptr, ptr %node.addr, align 8, !dbg !1027
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %35, i32 0, i32 3, !dbg !1029
  %36 = load i16, ptr %flags, align 2, !dbg !1030
  %conv43 = zext i16 %36 to i32, !dbg !1030
  %or = or i32 %conv43, 32, !dbg !1030
  %conv44 = trunc i32 %or to i16, !dbg !1030
  store i16 %conv44, ptr %flags, align 2, !dbg !1030
  br label %if.end45, !dbg !1031

if.end45:                                         ; preds = %if.then42, %lor.lhs.false40
  %37 = load i32, ptr %status, align 4, !dbg !1032
  store i32 %37, ptr %retval, align 4, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

cleanup:                                          ; preds = %if.end45, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %predefined) #4, !dbg !1033
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1033
  %38 = load i32, ptr %retval, align 4, !dbg !1033
  ret i32 %38, !dbg !1033
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_check_object_type(ptr noundef %info, ptr noundef %return_object_ptr, i32 noundef %expected_btypes, i32 noundef %package_index) #0 align 16 !dbg !1034 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object_ptr.addr = alloca ptr, align 8
  %expected_btypes.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %return_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %type_buffer = alloca [96 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1038, metadata !DIExpression()), !dbg !1049
  store ptr %return_object_ptr, ptr %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object_ptr.addr, metadata !1039, metadata !DIExpression()), !dbg !1050
  store i32 %expected_btypes, ptr %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %expected_btypes.addr, metadata !1040, metadata !DIExpression()), !dbg !1051
  store i32 %package_index, ptr %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %package_index.addr, metadata !1041, metadata !DIExpression()), !dbg !1052
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_object) #4, !dbg !1053
  call void @llvm.dbg.declare(metadata ptr %return_object, metadata !1042, metadata !DIExpression()), !dbg !1054
  %0 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1055
  %1 = load ptr, ptr %0, align 8, !dbg !1056
  store ptr %1, ptr %return_object, align 8, !dbg !1054
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1043, metadata !DIExpression()), !dbg !1058
  store i32 0, ptr %status, align 4, !dbg !1058
  call void @llvm.lifetime.start.p0(i64 96, ptr %type_buffer) #4, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %type_buffer, metadata !1044, metadata !DIExpression()), !dbg !1060
  %2 = load ptr, ptr %return_object, align 8, !dbg !1061
  %tobool = icmp ne ptr %2, null, !dbg !1061
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1063

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %return_object, align 8, !dbg !1064
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !1064
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !1064
  %conv = zext i8 %4 to i32, !dbg !1064
  %cmp = icmp eq i32 %conv, 15, !dbg !1065
  br i1 %cmp, label %if.then, label %if.end, !dbg !1066

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %info.addr, align 8, !dbg !1067
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %5, i32 0, i32 5, !dbg !1067
  %6 = load ptr, ptr %full_pathname, align 8, !dbg !1067
  %7 = load ptr, ptr %info.addr, align 8, !dbg !1067
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %7, i32 0, i32 12, !dbg !1067
  %8 = load i16, ptr %node_flags, align 2, !dbg !1067
  %9 = load ptr, ptr %return_object, align 8, !dbg !1067
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 4, !dbg !1067
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1067
  %10 = load ptr, ptr %return_object, align 8, !dbg !1067
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !1067
  %11 = load i8, ptr %type, align 1, !dbg !1067
  %conv2 = zext i8 %11 to i32, !dbg !1067
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %conv2) #5, !dbg !1067
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 203, ptr noundef %6, i16 noundef zeroext %8, ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %call) #5, !dbg !1067
  store i32 12291, ptr %retval, align 4, !dbg !1069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1069

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %return_object, align 8, !dbg !1070
  %call3 = call i32 @acpi_ns_get_bitmapped_type(ptr noundef %12) #5, !dbg !1071
  %13 = load ptr, ptr %info.addr, align 8, !dbg !1072
  %return_btype = getelementptr inbounds %struct.acpi_evaluate_info, ptr %13, i32 0, i32 10, !dbg !1073
  store i32 %call3, ptr %return_btype, align 4, !dbg !1074
  %14 = load ptr, ptr %info.addr, align 8, !dbg !1075
  %return_btype4 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %14, i32 0, i32 10, !dbg !1077
  %15 = load i32, ptr %return_btype4, align 4, !dbg !1077
  %cmp5 = icmp eq i32 %15, 0, !dbg !1078
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1079

if.then7:                                         ; preds = %if.end
  br label %type_error_exit, !dbg !1080

if.end8:                                          ; preds = %if.end
  %16 = load ptr, ptr %info.addr, align 8, !dbg !1082
  %return_btype9 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %16, i32 0, i32 10, !dbg !1084
  %17 = load i32, ptr %return_btype9, align 4, !dbg !1084
  %18 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1085
  %and = and i32 %17, %18, !dbg !1086
  %cmp10 = icmp eq i32 %and, 32, !dbg !1087
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !1088

if.then12:                                        ; preds = %if.end8
  %19 = load ptr, ptr %info.addr, align 8, !dbg !1089
  %20 = load ptr, ptr %return_object, align 8, !dbg !1091
  %call13 = call i32 @acpi_ns_check_reference(ptr noundef %19, ptr noundef %20) #5, !dbg !1092
  store i32 %call13, ptr %status, align 4, !dbg !1093
  %21 = load i32, ptr %status, align 4, !dbg !1094
  store i32 %21, ptr %retval, align 4, !dbg !1095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1095

if.end14:                                         ; preds = %if.end8
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1096
  %23 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1097
  %24 = load i32, ptr %package_index.addr, align 4, !dbg !1098
  %25 = load ptr, ptr %return_object_ptr.addr, align 8, !dbg !1099
  %call15 = call i32 @acpi_ns_simple_repair(ptr noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef %25) #5, !dbg !1100
  store i32 %call15, ptr %status, align 4, !dbg !1101
  %26 = load i32, ptr %status, align 4, !dbg !1102
  %tobool16 = icmp ne i32 %26, 0, !dbg !1102
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1104

if.then17:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

if.end18:                                         ; preds = %if.end14
  br label %type_error_exit, !dbg !1102

type_error_exit:                                  ; preds = %if.end18, %if.then7
  call void @llvm.dbg.label(metadata !1048), !dbg !1107
  %arraydecay19 = getelementptr inbounds [96 x i8], ptr %type_buffer, i64 0, i64 0, !dbg !1108
  %27 = load i32, ptr %expected_btypes.addr, align 4, !dbg !1109
  call void @acpi_ut_get_expected_return_types(ptr noundef %arraydecay19, i32 noundef %27) #5, !dbg !1110
  %28 = load ptr, ptr %return_object, align 8, !dbg !1111
  %tobool20 = icmp ne ptr %28, null, !dbg !1111
  br i1 %tobool20, label %if.else, label %if.then21, !dbg !1113

if.then21:                                        ; preds = %type_error_exit
  %29 = load ptr, ptr %info.addr, align 8, !dbg !1114
  %full_pathname22 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %29, i32 0, i32 5, !dbg !1114
  %30 = load ptr, ptr %full_pathname22, align 8, !dbg !1114
  %31 = load ptr, ptr %info.addr, align 8, !dbg !1114
  %node_flags23 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %31, i32 0, i32 12, !dbg !1114
  %32 = load i16, ptr %node_flags23, align 2, !dbg !1114
  %arraydecay24 = getelementptr inbounds [96 x i8], ptr %type_buffer, i64 0, i64 0, !dbg !1114
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 249, ptr noundef %30, i16 noundef zeroext %32, ptr noundef @.str.1, ptr noundef %arraydecay24) #5, !dbg !1114
  br label %if.end38, !dbg !1116

if.else:                                          ; preds = %type_error_exit
  %33 = load i32, ptr %package_index.addr, align 4, !dbg !1117
  %cmp25 = icmp eq i32 %33, -1, !dbg !1119
  br i1 %cmp25, label %if.then27, label %if.else32, !dbg !1120

if.then27:                                        ; preds = %if.else
  %34 = load ptr, ptr %info.addr, align 8, !dbg !1121
  %full_pathname28 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %34, i32 0, i32 5, !dbg !1121
  %35 = load ptr, ptr %full_pathname28, align 8, !dbg !1121
  %36 = load ptr, ptr %info.addr, align 8, !dbg !1121
  %node_flags29 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %36, i32 0, i32 12, !dbg !1121
  %37 = load i16, ptr %node_flags29, align 2, !dbg !1121
  %38 = load ptr, ptr %return_object, align 8, !dbg !1121
  %call30 = call ptr @acpi_ut_get_object_type_name(ptr noundef %38) #5, !dbg !1121
  %arraydecay31 = getelementptr inbounds [96 x i8], ptr %type_buffer, i64 0, i64 0, !dbg !1121
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 254, ptr noundef %35, i16 noundef zeroext %37, ptr noundef @.str.2, ptr noundef %call30, ptr noundef %arraydecay31) #5, !dbg !1121
  br label %if.end37, !dbg !1123

if.else32:                                        ; preds = %if.else
  %39 = load ptr, ptr %info.addr, align 8, !dbg !1124
  %full_pathname33 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %39, i32 0, i32 5, !dbg !1124
  %40 = load ptr, ptr %full_pathname33, align 8, !dbg !1124
  %41 = load ptr, ptr %info.addr, align 8, !dbg !1124
  %node_flags34 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %41, i32 0, i32 12, !dbg !1124
  %42 = load i16, ptr %node_flags34, align 2, !dbg !1124
  %43 = load i32, ptr %package_index.addr, align 4, !dbg !1124
  %44 = load ptr, ptr %return_object, align 8, !dbg !1124
  %call35 = call ptr @acpi_ut_get_object_type_name(ptr noundef %44) #5, !dbg !1124
  %arraydecay36 = getelementptr inbounds [96 x i8], ptr %type_buffer, i64 0, i64 0, !dbg !1124
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 260, ptr noundef %40, i16 noundef zeroext %42, ptr noundef @.str.3, i32 noundef %43, ptr noundef %call35, ptr noundef %arraydecay36) #5, !dbg !1124
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then27
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then21
  store i32 12291, ptr %retval, align 4, !dbg !1126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1126

cleanup:                                          ; preds = %if.end38, %if.then17, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 96, ptr %type_buffer) #4, !dbg !1127
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_object) #4, !dbg !1127
  %45 = load i32, ptr %retval, align 4, !dbg !1127
  ret i32 %45, !dbg !1127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1128 dso_local i32 @acpi_ns_check_package(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1132 dso_local i32 @acpi_ns_complex_repairs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1135 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1139 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_get_bitmapped_type(ptr noundef %return_object) #0 align 16 !dbg !1143 {
entry:
  %retval = alloca i32, align 4
  %return_object.addr = alloca ptr, align 8
  %return_btype = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !1147, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr %return_btype) #4, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %return_btype, metadata !1148, metadata !DIExpression()), !dbg !1151
  %0 = load ptr, ptr %return_object.addr, align 8, !dbg !1152
  %tobool = icmp ne ptr %0, null, !dbg !1152
  br i1 %tobool, label %if.end, label %if.then, !dbg !1154

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1155

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %return_object.addr, align 8, !dbg !1157
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1158
  %2 = load i8, ptr %type, align 1, !dbg !1158
  %conv = zext i8 %2 to i32, !dbg !1157
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 20, label %sw.bb4
  ], !dbg !1159

sw.bb:                                            ; preds = %if.end
  store i32 2, ptr %return_btype, align 4, !dbg !1160
  br label %sw.epilog, !dbg !1162

sw.bb1:                                           ; preds = %if.end
  store i32 8, ptr %return_btype, align 4, !dbg !1163
  br label %sw.epilog, !dbg !1164

sw.bb2:                                           ; preds = %if.end
  store i32 4, ptr %return_btype, align 4, !dbg !1165
  br label %sw.epilog, !dbg !1166

sw.bb3:                                           ; preds = %if.end
  store i32 16, ptr %return_btype, align 4, !dbg !1167
  br label %sw.epilog, !dbg !1168

sw.bb4:                                           ; preds = %if.end
  store i32 32, ptr %return_btype, align 4, !dbg !1169
  br label %sw.epilog, !dbg !1170

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %return_btype, align 4, !dbg !1171
  br label %sw.epilog, !dbg !1172

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32, ptr %return_btype, align 4, !dbg !1173
  store i32 %3, ptr %retval, align 4, !dbg !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1174

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %return_btype) #4, !dbg !1175
  %4 = load i32, ptr %retval, align 4, !dbg !1175
  ret i32 %4, !dbg !1175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_check_reference(ptr noundef %info, ptr noundef %return_object) #0 align 16 !dbg !1176 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1180, metadata !DIExpression()), !dbg !1182
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !1181, metadata !DIExpression()), !dbg !1183
  %0 = load ptr, ptr %return_object.addr, align 8, !dbg !1184
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %0, i32 0, i32 5, !dbg !1186
  %1 = load i8, ptr %class, align 1, !dbg !1186
  %conv = zext i8 %1 to i32, !dbg !1184
  %cmp = icmp eq i32 %conv, 5, !dbg !1187
  br i1 %cmp, label %if.then, label %if.end, !dbg !1188

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1189
  br label %return, !dbg !1189

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !1191
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 5, !dbg !1191
  %3 = load ptr, ptr %full_pathname, align 8, !dbg !1191
  %4 = load ptr, ptr %info.addr, align 8, !dbg !1191
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, ptr %4, i32 0, i32 12, !dbg !1191
  %5 = load i16, ptr %node_flags, align 2, !dbg !1191
  %6 = load ptr, ptr %return_object.addr, align 8, !dbg !1191
  %call = call ptr @acpi_ut_get_reference_name(ptr noundef %6) #5, !dbg !1191
  %7 = load ptr, ptr %return_object.addr, align 8, !dbg !1191
  %class2 = getelementptr inbounds %struct.acpi_object_reference, ptr %7, i32 0, i32 5, !dbg !1191
  %8 = load i8, ptr %class2, align 1, !dbg !1191
  %conv3 = zext i8 %8 to i32, !dbg !1191
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 301, ptr noundef %3, i16 noundef zeroext %5, ptr noundef @.str.4, ptr noundef %call, i32 noundef %conv3) #5, !dbg !1191
  store i32 12291, ptr %retval, align 4, !dbg !1192
  br label %return, !dbg !1192

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1193
  ret i32 %9, !dbg !1193
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1194 dso_local i32 @acpi_ns_simple_repair(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1197 dso_local void @acpi_ut_get_expected_return_types(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1200 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1203 dso_local ptr @acpi_ut_get_reference_name(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!882, !883, !884, !885, !886, !887, !888, !889}
!llvm.ident = !{!890}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_predefined_methods", scope: !2, file: !834, line: 187, type: !835, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nspredef.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nspredef\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nspredef.ll drivers/acpi/acpica/nspredef.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nspredef.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43daffc54fba407f8dd1085027b2e5f3")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 323, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!17 = !{!18, !20, !24, !31}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !26)
!26 = !{!27, !36, !802, !803}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !6, line: 435, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !28, file: !6, line: 430, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !6, line: 431, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !6, line: 436, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !38)
!38 = !{!39, !51, !67, !79, !115, !129, !138, !451, !468, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !748, !765, !778, !792, !801}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !6, line: 370, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !6, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !6, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !6, line: 371, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !66)
!66 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !6, line: 372, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !6, line: 94, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !6, line: 94, baseType: !47, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !6, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !6, line: 373, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !43, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !47, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !43, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !47, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 328, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 329, baseType: !20, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 330, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !47)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !6, line: 374, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !43, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !47, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !6, line: 375, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !43, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !47, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !31, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !6, line: 376, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !448, !449, !450}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 145, baseType: !43, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 145, baseType: !47, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 146, baseType: !33, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 147, baseType: !33, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 148, baseType: !43, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 149, baseType: !43, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 150, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 154, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 151, size: 64, elements: !154)
!154 = !{!155, !447}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 152, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !33, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !33, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !47, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !33, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !33, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !33, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !114, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !33, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !33, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !33, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !33, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !33, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !33, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !33, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !33, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !88, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !20, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !20, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 909, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !95, line: 910, baseType: !88, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !95, line: 911, baseType: !88, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !95, line: 912, baseType: !88, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !95, line: 913, baseType: !88, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !95, line: 914, baseType: !88, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !95, line: 915, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 891, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !95, line: 892, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 844, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !95, line: 845, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !95, line: 845, baseType: !47, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !95, line: 845, baseType: !88, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !95, line: 845, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !95, line: 845, baseType: !93, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !95, line: 845, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 732, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !95, line: 733, baseType: !64, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !95, line: 734, baseType: !20, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !95, line: 735, baseType: !76, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !95, line: 736, baseType: !88, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !95, line: 737, baseType: !76, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !95, line: 738, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !95, line: 893, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 851, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !95, line: 852, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !95, line: 852, baseType: !47, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !95, line: 852, baseType: !88, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !95, line: 852, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !95, line: 852, baseType: !93, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !95, line: 852, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !95, line: 852, baseType: !76, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !95, line: 853, baseType: !88, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !95, line: 854, baseType: !20, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !95, line: 855, baseType: !20, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !95, line: 894, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 862, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !95, line: 863, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !95, line: 863, baseType: !47, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !95, line: 863, baseType: !88, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !95, line: 863, baseType: !93, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !95, line: 863, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !95, line: 864, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !95, line: 865, baseType: !76, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !95, line: 866, baseType: !33, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !95, line: 867, baseType: !76, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !95, line: 868, baseType: !76, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !95, line: 869, baseType: !76, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !95, line: 870, baseType: !107, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !95, line: 871, baseType: !20, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !95, line: 872, baseType: !20, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !95, line: 873, baseType: !20, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !95, line: 874, baseType: !20, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !95, line: 875, baseType: !20, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !95, line: 876, baseType: !20, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !95, line: 877, baseType: !20, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !95, line: 878, baseType: !20, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !95, line: 879, baseType: !20, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !95, line: 880, baseType: !20, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !95, line: 881, baseType: !20, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !95, line: 882, baseType: !20, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !95, line: 883, baseType: !20, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !95, line: 884, baseType: !47, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !95, line: 885, baseType: !33, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !95, line: 886, baseType: !33, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !95, line: 887, baseType: !33, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !95, line: 888, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !95, line: 916, baseType: !93, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !95, line: 917, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 679, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !95, line: 680, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 575, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !95, line: 576, baseType: !31, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !95, line: 681, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 604, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !95, line: 605, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !95, line: 606, baseType: !47, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !95, line: 607, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !95, line: 608, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !95, line: 609, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !95, line: 610, baseType: !64, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !95, line: 682, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 582, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !95, line: 583, baseType: !31, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !95, line: 584, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !95, line: 683, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 616, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !95, line: 617, baseType: !31, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !95, line: 618, baseType: !93, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !95, line: 684, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 621, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !95, line: 622, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !95, line: 623, baseType: !20, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !95, line: 624, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !95, line: 625, baseType: !88, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !95, line: 626, baseType: !88, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !95, line: 627, baseType: !20, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !95, line: 685, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 590, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !95, line: 591, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !95, line: 592, baseType: !20, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !95, line: 593, baseType: !43, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !95, line: 594, baseType: !43, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !95, line: 595, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !95, line: 596, baseType: !31, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !95, line: 597, baseType: !20, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !95, line: 686, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 634, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !95, line: 635, baseType: !31, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !95, line: 636, baseType: !33, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !95, line: 637, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !95, line: 638, baseType: !43, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !95, line: 639, baseType: !64, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !95, line: 687, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 646, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !95, line: 647, baseType: !31, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !95, line: 648, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !95, line: 688, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 669, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !95, line: 670, baseType: !31, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !95, line: 671, baseType: !33, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !95, line: 672, baseType: !93, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !95, line: 673, baseType: !43, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !95, line: 674, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 660, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !95, line: 661, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !20, !31}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !31)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !95, line: 662, baseType: !31, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !95, line: 918, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !95, line: 919, baseType: !20, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !20, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !20, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !47, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !33, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !125, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !88, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !125, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !93, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !43, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !93, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !43, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !93, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !76, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 718, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !95, line: 722, baseType: !20, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !95, line: 723, baseType: !20, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !95, line: 724, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !95, line: 725, baseType: !33, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !95, line: 726, baseType: !33, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !95, line: 727, baseType: !33, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !43, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !43, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 652, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 656, baseType: !157)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 153, baseType: !43, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 157, baseType: !114, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 158, baseType: !33, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !6, line: 377, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !43, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !47, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !47, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !31, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !64, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !43, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !43, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !33, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !6, line: 378, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !47, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !43, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !43, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !469, file: !6, line: 141, baseType: !31, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !6, line: 379, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 186, baseType: !43, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 186, baseType: !47, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 186, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 186, baseType: !43, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !6, line: 380, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 189, baseType: !43, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 189, baseType: !47, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 190, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 190, baseType: !43, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 190, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !95, line: 481, baseType: !93, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !95, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !95, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !95, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !95, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !95, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !95, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !95, line: 501, baseType: !20, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !95, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !95, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !95, line: 460, baseType: !33, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !95, line: 461, baseType: !64, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !95, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !95, line: 469, baseType: !47, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !95, line: 470, baseType: !33, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !95, line: 471, baseType: !33, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !95, line: 472, baseType: !33, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !95, line: 473, baseType: !33, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !95, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !95, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !95, line: 439, baseType: !93, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !95, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !95, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!20, !389, !20, !31}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !95, line: 421, baseType: !31, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !95, line: 423, baseType: !33, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !95, line: 424, baseType: !33, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !95, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !95, line: 430, baseType: !93, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !95, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !95, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !95, line: 451, baseType: !33, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !95, line: 452, baseType: !33, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !95, line: 453, baseType: !33, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !95, line: 454, baseType: !33, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !95, line: 487, baseType: !64, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !95, line: 488, baseType: !20, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !95, line: 489, baseType: !47, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !95, line: 490, baseType: !47, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !95, line: 491, baseType: !33, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !95, line: 492, baseType: !33, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !6, line: 381, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 194, baseType: !43, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 194, baseType: !47, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 194, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 194, baseType: !43, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !6, line: 382, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 199, baseType: !43, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 199, baseType: !47, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 201, baseType: !33, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 202, baseType: !33, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 203, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 203, baseType: !43, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 203, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !6, line: 383, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 207, baseType: !43, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 207, baseType: !47, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 207, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 207, baseType: !43, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !6, line: 384, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 235, baseType: !43, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 235, baseType: !47, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 235, baseType: !93, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 235, baseType: !43, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !6, line: 385, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 239, baseType: !43, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 239, baseType: !93, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 240, baseType: !43, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 241, baseType: !88, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 242, baseType: !47, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 243, baseType: !88, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !6, line: 386, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 264, baseType: !43, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 264, baseType: !47, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 264, baseType: !93, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 265, baseType: !43, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !6, line: 387, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 247, baseType: !43, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 247, baseType: !47, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 247, baseType: !93, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 247, baseType: !43, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 248, baseType: !43, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !6, line: 388, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 252, baseType: !43, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 252, baseType: !47, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 252, baseType: !93, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 257, baseType: !43, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 258, baseType: !43, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !6, line: 389, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 275, baseType: !43, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 275, baseType: !47, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 275, baseType: !93, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 277, baseType: !385, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 278, baseType: !31, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 279, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !6, line: 390, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !740, !746, !747}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 283, baseType: !43, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 283, baseType: !47, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 284, baseType: !33, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 285, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!18, !20, !481, !20, !736, !31, !31}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 286, baseType: !93, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 287, baseType: !31, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !722, file: !6, line: 288, baseType: !31, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 289, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!18, !389, !20, !31, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 290, baseType: !43, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 291, baseType: !43, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !6, line: 391, baseType: !749, size: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !6, line: 310, baseType: !43, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !6, line: 310, baseType: !47, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !749, file: !6, line: 311, baseType: !33, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !749, file: !6, line: 312, baseType: !33, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !749, file: !6, line: 313, baseType: !31, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 314, baseType: !93, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !749, file: !6, line: 315, baseType: !125, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !749, file: !6, line: 316, baseType: !88, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !749, file: !6, line: 317, baseType: !88, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !6, line: 392, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !6, line: 343, baseType: !43, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !6, line: 343, baseType: !47, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !766, file: !6, line: 343, baseType: !93, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !766, file: !6, line: 344, baseType: !93, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !766, file: !6, line: 345, baseType: !31, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !766, file: !6, line: 346, baseType: !88, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !766, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !6, line: 393, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 353, baseType: !43, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 353, baseType: !47, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !779, file: !6, line: 353, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !389, !31}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !779, file: !6, line: 354, baseType: !31, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !6, line: 394, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !6, line: 360, baseType: !43, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !6, line: 360, baseType: !47, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !6, line: 360, baseType: !43, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !6, line: 401, baseType: !94, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !6, line: 437, baseType: !94, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !25, file: !6, line: 438, baseType: !195, size: 1600)
!804 = !{!0, !805, !810, !815, !820, !825, !829}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 488, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 61)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 272, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 34)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 360, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 45)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 260, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 520, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 65)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 72, elements: !405)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 536, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 67)
!834 = !DIFile(filename: "drivers/acpi/acpica/acpredef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90908fe130010c7f826d1acdada19b8f")
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 19040, elements: !880)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !95, line: 351, size: 56, elements: !838)
!838 = !{!839, !845, !854, !862, !871}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !837, file: !95, line: 352, baseType: !840, size: 56)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !95, line: 295, size: 56, elements: !841)
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !840, file: !95, line: 296, baseType: !107, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !840, file: !95, line: 297, baseType: !47, size: 16, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !840, file: !95, line: 298, baseType: !33, size: 8, offset: 48)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !837, file: !95, line: 353, baseType: !846, size: 56)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !95, line: 314, size: 56, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !95, line: 315, baseType: !33, size: 8)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !846, file: !95, line: 316, baseType: !33, size: 8, offset: 8)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !846, file: !95, line: 317, baseType: !33, size: 8, offset: 16)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !846, file: !95, line: 318, baseType: !33, size: 8, offset: 24)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !846, file: !95, line: 319, baseType: !33, size: 8, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !846, file: !95, line: 320, baseType: !47, size: 16, offset: 40)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !837, file: !95, line: 354, baseType: !855, size: 56)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !95, line: 325, size: 56, elements: !856)
!856 = !{!857, !858, !859, !861}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !95, line: 326, baseType: !33, size: 8)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !855, file: !95, line: 327, baseType: !33, size: 8, offset: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !855, file: !95, line: 328, baseType: !860, size: 32, offset: 16)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !108)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !855, file: !95, line: 329, baseType: !33, size: 8, offset: 48)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !837, file: !95, line: 355, baseType: !863, size: 56)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !95, line: 334, size: 56, elements: !864)
!864 = !{!865, !866, !867, !869, !870}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !95, line: 335, baseType: !33, size: 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !863, file: !95, line: 336, baseType: !33, size: 8, offset: 8)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !863, file: !95, line: 337, baseType: !868, size: 16, offset: 16)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !494)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !863, file: !95, line: 338, baseType: !33, size: 8, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !863, file: !95, line: 339, baseType: !47, size: 16, offset: 40)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !837, file: !95, line: 356, baseType: !872, size: 56)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !95, line: 342, size: 56, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !95, line: 343, baseType: !33, size: 8)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !872, file: !95, line: 344, baseType: !33, size: 8, offset: 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !872, file: !95, line: 345, baseType: !33, size: 8, offset: 16)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !872, file: !95, line: 346, baseType: !33, size: 8, offset: 24)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !872, file: !95, line: 347, baseType: !33, size: 8, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !872, file: !95, line: 348, baseType: !47, size: 16, offset: 40)
!880 = !{!881}
!881 = !DISubrange(count: 340)
!882 = !{i32 7, !"Dwarf Version", i32 5}
!883 = !{i32 2, !"Debug Info Version", i32 3}
!884 = !{i32 1, !"wchar_size", i32 2}
!885 = !{i32 8, !"cf-protection-branch", i32 1}
!886 = !{i32 4, !"function_return_thunk_extern", i32 1}
!887 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!888 = !{i32 1, !"Code Model", i32 2}
!889 = !{i32 1, !"override-stack-alignment", i32 8}
!890 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!891 = distinct !DISubprogram(name: "acpi_ns_check_return_value", scope: !3, file: !3, line: 65, type: !892, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!892 = !DISubroutineType(types: !893)
!893 = !{!18, !93, !894, !20, !18, !125}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !162, line: 152, size: 704, elements: !896)
!896 = !{!897, !898, !900, !901, !902, !903, !904, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !895, file: !162, line: 155, baseType: !93, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !895, file: !162, line: 156, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !895, file: !162, line: 157, baseType: !125, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !895, file: !162, line: 159, baseType: !93, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !895, file: !162, line: 160, baseType: !43, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !895, file: !162, line: 161, baseType: !76, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !895, file: !162, line: 163, baseType: !905, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !895, file: !162, line: 164, baseType: !43, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !895, file: !162, line: 165, baseType: !43, size: 64, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !895, file: !162, line: 167, baseType: !20, size: 32, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !895, file: !162, line: 168, baseType: !20, size: 32, offset: 608)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !895, file: !162, line: 169, baseType: !47, size: 16, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !895, file: !162, line: 170, baseType: !47, size: 16, offset: 656)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !895, file: !162, line: 171, baseType: !33, size: 8, offset: 672)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !895, file: !162, line: 172, baseType: !33, size: 8, offset: 680)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !895, file: !162, line: 173, baseType: !33, size: 8, offset: 688)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923}
!916 = !DILocalVariable(name: "node", arg: 1, scope: !891, file: !3, line: 65, type: !93)
!917 = !DILocalVariable(name: "info", arg: 2, scope: !891, file: !3, line: 66, type: !894)
!918 = !DILocalVariable(name: "user_param_count", arg: 3, scope: !891, file: !3, line: 67, type: !20)
!919 = !DILocalVariable(name: "return_status", arg: 4, scope: !891, file: !3, line: 68, type: !18)
!920 = !DILocalVariable(name: "return_object_ptr", arg: 5, scope: !891, file: !3, line: 69, type: !125)
!921 = !DILocalVariable(name: "status", scope: !891, file: !3, line: 71, type: !18)
!922 = !DILocalVariable(name: "predefined", scope: !891, file: !3, line: 72, type: !905)
!923 = !DILabel(scope: !891, name: "exit", file: !3, line: 158)
!924 = !DILocation(line: 65, column: 56, scope: !891)
!925 = !DILocation(line: 66, column: 34, scope: !891)
!926 = !DILocation(line: 67, column: 11, scope: !891)
!927 = !DILocation(line: 68, column: 19, scope: !891)
!928 = !DILocation(line: 69, column: 35, scope: !891)
!929 = !DILocation(line: 71, column: 2, scope: !891)
!930 = !DILocation(line: 71, column: 14, scope: !891)
!931 = !DILocation(line: 72, column: 2, scope: !891)
!932 = !DILocation(line: 72, column: 36, scope: !891)
!933 = !DILocation(line: 78, column: 15, scope: !891)
!934 = !DILocation(line: 78, column: 21, scope: !891)
!935 = !DILocation(line: 78, column: 13, scope: !891)
!936 = !DILocation(line: 79, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !891, file: !3, line: 79, column: 6)
!938 = !DILocation(line: 79, column: 6, scope: !891)
!939 = !DILocation(line: 80, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 79, column: 19)
!941 = !DILocation(line: 87, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !891, file: !3, line: 87, column: 6)
!943 = !DILocation(line: 87, column: 21, scope: !942)
!944 = !DILocation(line: 87, column: 31, scope: !942)
!945 = !DILocation(line: 87, column: 35, scope: !942)
!946 = !DILocation(line: 87, column: 49, scope: !942)
!947 = !DILocation(line: 87, column: 6, scope: !891)
!948 = !DILocation(line: 88, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !942, file: !3, line: 87, column: 75)
!950 = !DILocation(line: 104, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !891, file: !3, line: 104, column: 6)
!952 = !DILocation(line: 104, column: 35, scope: !951)
!953 = !DILocation(line: 105, column: 8, scope: !951)
!954 = !DILocation(line: 105, column: 25, scope: !951)
!955 = !DILocation(line: 105, column: 42, scope: !951)
!956 = !DILocation(line: 106, column: 7, scope: !951)
!957 = !DILocation(line: 106, column: 24, scope: !951)
!958 = !DILocation(line: 106, column: 40, scope: !951)
!959 = !DILocation(line: 104, column: 6, scope: !891)
!960 = !DILocation(line: 107, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !951, file: !3, line: 106, column: 60)
!962 = !DILocation(line: 114, column: 37, scope: !891)
!963 = !DILocation(line: 114, column: 43, scope: !891)
!964 = !DILocation(line: 115, column: 9, scope: !891)
!965 = !DILocation(line: 115, column: 26, scope: !891)
!966 = !DILocation(line: 114, column: 11, scope: !891)
!967 = !DILocation(line: 114, column: 9, scope: !891)
!968 = !DILocation(line: 117, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !891, file: !3, line: 117, column: 6)
!970 = !DILocation(line: 117, column: 6, scope: !891)
!971 = !DILocation(line: 118, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 117, column: 28)
!973 = !DILocation(line: 126, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !891, file: !3, line: 126, column: 6)
!975 = !DILocation(line: 126, column: 8, scope: !974)
!976 = !DILocation(line: 126, column: 7, scope: !974)
!977 = !DILocation(line: 126, column: 6, scope: !891)
!978 = !DILocation(line: 127, column: 3, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 126, column: 29)
!980 = !DILocation(line: 134, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !891, file: !3, line: 134, column: 6)
!982 = !DILocation(line: 134, column: 7, scope: !981)
!983 = !DILocation(line: 134, column: 35, scope: !981)
!984 = !DILocation(line: 134, column: 6, scope: !981)
!985 = !DILocation(line: 134, column: 40, scope: !981)
!986 = !DILocation(line: 134, column: 6, scope: !891)
!987 = !DILocation(line: 135, column: 27, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !3, line: 134, column: 62)
!989 = !DILocation(line: 135, column: 26, scope: !988)
!990 = !DILocation(line: 135, column: 3, scope: !988)
!991 = !DILocation(line: 135, column: 9, scope: !988)
!992 = !DILocation(line: 135, column: 24, scope: !988)
!993 = !DILocation(line: 136, column: 34, scope: !988)
!994 = !DILocation(line: 136, column: 40, scope: !988)
!995 = !DILocation(line: 136, column: 12, scope: !988)
!996 = !DILocation(line: 136, column: 10, scope: !988)
!997 = !DILocation(line: 137, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !3, line: 137, column: 7)
!999 = !DILocation(line: 137, column: 7, scope: !988)
!1000 = !DILocation(line: 141, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 141, column: 8)
!1002 = distinct !DILexicalBlock(scope: !998, file: !3, line: 137, column: 29)
!1003 = !DILocation(line: 141, column: 16, scope: !1001)
!1004 = !DILocation(line: 141, column: 40, scope: !1001)
!1005 = !DILocation(line: 142, column: 9, scope: !1001)
!1006 = !DILocation(line: 142, column: 16, scope: !1001)
!1007 = !DILocation(line: 141, column: 8, scope: !1002)
!1008 = !DILocation(line: 143, column: 5, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 142, column: 42)
!1010 = !DILocation(line: 145, column: 3, scope: !1002)
!1011 = !DILocation(line: 146, column: 2, scope: !988)
!1012 = !DILocation(line: 156, column: 35, scope: !891)
!1013 = !DILocation(line: 156, column: 41, scope: !891)
!1014 = !DILocation(line: 156, column: 47, scope: !891)
!1015 = !DILocation(line: 156, column: 55, scope: !891)
!1016 = !DILocation(line: 156, column: 11, scope: !891)
!1017 = !DILocation(line: 156, column: 9, scope: !891)
!1018 = !DILocation(line: 156, column: 2, scope: !891)
!1019 = !DILocation(line: 158, column: 1, scope: !891)
!1020 = !DILocation(line: 164, column: 6, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !891, file: !3, line: 164, column: 6)
!1022 = !DILocation(line: 164, column: 27, scope: !1021)
!1023 = !DILocation(line: 164, column: 31, scope: !1021)
!1024 = !DILocation(line: 164, column: 37, scope: !1021)
!1025 = !DILocation(line: 164, column: 50, scope: !1021)
!1026 = !DILocation(line: 164, column: 6, scope: !891)
!1027 = !DILocation(line: 165, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 164, column: 75)
!1029 = !DILocation(line: 165, column: 9, scope: !1028)
!1030 = !DILocation(line: 165, column: 15, scope: !1028)
!1031 = !DILocation(line: 166, column: 2, scope: !1028)
!1032 = !DILocation(line: 168, column: 2, scope: !891)
!1033 = !DILocation(line: 169, column: 1, scope: !891)
!1034 = distinct !DISubprogram(name: "acpi_ns_check_object_type", scope: !3, file: !3, line: 191, type: !1035, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!18, !894, !125, !20, !20}
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1048}
!1038 = !DILocalVariable(name: "info", arg: 1, scope: !1034, file: !3, line: 191, type: !894)
!1039 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1034, file: !3, line: 192, type: !125)
!1040 = !DILocalVariable(name: "expected_btypes", arg: 3, scope: !1034, file: !3, line: 193, type: !20)
!1041 = !DILocalVariable(name: "package_index", arg: 4, scope: !1034, file: !3, line: 193, type: !20)
!1042 = !DILocalVariable(name: "return_object", scope: !1034, file: !3, line: 195, type: !43)
!1043 = !DILocalVariable(name: "status", scope: !1034, file: !3, line: 196, type: !18)
!1044 = !DILocalVariable(name: "type_buffer", scope: !1034, file: !3, line: 197, type: !1045)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 768, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 96)
!1048 = !DILabel(scope: !1034, name: "type_error_exit", file: !3, line: 242)
!1049 = !DILocation(line: 191, column: 54, scope: !1034)
!1050 = !DILocation(line: 192, column: 34, scope: !1034)
!1051 = !DILocation(line: 193, column: 10, scope: !1034)
!1052 = !DILocation(line: 193, column: 31, scope: !1034)
!1053 = !DILocation(line: 195, column: 2, scope: !1034)
!1054 = !DILocation(line: 195, column: 29, scope: !1034)
!1055 = !DILocation(line: 195, column: 46, scope: !1034)
!1056 = !DILocation(line: 195, column: 45, scope: !1034)
!1057 = !DILocation(line: 196, column: 2, scope: !1034)
!1058 = !DILocation(line: 196, column: 14, scope: !1034)
!1059 = !DILocation(line: 197, column: 2, scope: !1034)
!1060 = !DILocation(line: 197, column: 7, scope: !1034)
!1061 = !DILocation(line: 201, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 201, column: 6)
!1063 = !DILocation(line: 201, column: 20, scope: !1062)
!1064 = !DILocation(line: 202, column: 6, scope: !1062)
!1065 = !DILocation(line: 202, column: 46, scope: !1062)
!1066 = !DILocation(line: 201, column: 6, scope: !1034)
!1067 = !DILocation(line: 203, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 202, column: 71)
!1069 = !DILocation(line: 209, column: 3, scope: !1068)
!1070 = !DILocation(line: 220, column: 50, scope: !1034)
!1071 = !DILocation(line: 220, column: 23, scope: !1034)
!1072 = !DILocation(line: 220, column: 2, scope: !1034)
!1073 = !DILocation(line: 220, column: 8, scope: !1034)
!1074 = !DILocation(line: 220, column: 21, scope: !1034)
!1075 = !DILocation(line: 221, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 221, column: 6)
!1077 = !DILocation(line: 221, column: 12, scope: !1076)
!1078 = !DILocation(line: 221, column: 25, scope: !1076)
!1079 = !DILocation(line: 221, column: 6, scope: !1034)
!1080 = !DILocation(line: 224, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 221, column: 44)
!1082 = !DILocation(line: 229, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 229, column: 6)
!1084 = !DILocation(line: 229, column: 13, scope: !1083)
!1085 = !DILocation(line: 229, column: 28, scope: !1083)
!1086 = !DILocation(line: 229, column: 26, scope: !1083)
!1087 = !DILocation(line: 229, column: 45, scope: !1083)
!1088 = !DILocation(line: 229, column: 6, scope: !1034)
!1089 = !DILocation(line: 230, column: 36, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 229, column: 70)
!1091 = !DILocation(line: 230, column: 42, scope: !1090)
!1092 = !DILocation(line: 230, column: 12, scope: !1090)
!1093 = !DILocation(line: 230, column: 10, scope: !1090)
!1094 = !DILocation(line: 231, column: 11, scope: !1090)
!1095 = !DILocation(line: 231, column: 3, scope: !1090)
!1096 = !DILocation(line: 236, column: 33, scope: !1034)
!1097 = !DILocation(line: 236, column: 39, scope: !1034)
!1098 = !DILocation(line: 237, column: 12, scope: !1034)
!1099 = !DILocation(line: 237, column: 27, scope: !1034)
!1100 = !DILocation(line: 236, column: 11, scope: !1034)
!1101 = !DILocation(line: 236, column: 9, scope: !1034)
!1102 = !DILocation(line: 238, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 238, column: 6)
!1104 = !DILocation(line: 238, column: 6, scope: !1034)
!1105 = !DILocation(line: 239, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 238, column: 28)
!1107 = !DILocation(line: 242, column: 1, scope: !1034)
!1108 = !DILocation(line: 246, column: 36, scope: !1034)
!1109 = !DILocation(line: 246, column: 49, scope: !1034)
!1110 = !DILocation(line: 246, column: 2, scope: !1034)
!1111 = !DILocation(line: 248, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 248, column: 6)
!1113 = !DILocation(line: 248, column: 6, scope: !1034)
!1114 = !DILocation(line: 249, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 248, column: 22)
!1116 = !DILocation(line: 253, column: 2, scope: !1115)
!1117 = !DILocation(line: 253, column: 13, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 253, column: 13)
!1119 = !DILocation(line: 253, column: 27, scope: !1118)
!1120 = !DILocation(line: 253, column: 13, scope: !1112)
!1121 = !DILocation(line: 254, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 253, column: 56)
!1123 = !DILocation(line: 259, column: 2, scope: !1122)
!1124 = !DILocation(line: 260, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 259, column: 9)
!1126 = !DILocation(line: 268, column: 2, scope: !1034)
!1127 = !DILocation(line: 269, column: 1, scope: !1034)
!1128 = !DISubprogram(name: "acpi_ns_check_package", scope: !1129, file: !1129, line: 245, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!18, !894, !125}
!1132 = !DISubprogram(name: "acpi_ns_complex_repairs", scope: !1129, file: !1129, line: 349, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!18, !894, !93, !18, !125}
!1135 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1136, file: !1136, line: 708, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1136 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !899, !20, !76, !47, !899, null}
!1139 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1136, file: !1136, line: 225, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!899, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!1143 = distinct !DISubprogram(name: "acpi_ns_get_bitmapped_type", scope: !3, file: !3, line: 323, type: !1144, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!20, !43}
!1146 = !{!1147, !1148}
!1147 = !DILocalVariable(name: "return_object", arg: 1, scope: !1143, file: !3, line: 323, type: !43)
!1148 = !DILocalVariable(name: "return_btype", scope: !1143, file: !3, line: 325, type: !20)
!1149 = !DILocation(line: 323, column: 66, scope: !1143)
!1150 = !DILocation(line: 325, column: 2, scope: !1143)
!1151 = !DILocation(line: 325, column: 6, scope: !1143)
!1152 = !DILocation(line: 327, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 327, column: 6)
!1154 = !DILocation(line: 327, column: 6, scope: !1143)
!1155 = !DILocation(line: 328, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 327, column: 22)
!1157 = !DILocation(line: 333, column: 10, scope: !1143)
!1158 = !DILocation(line: 333, column: 32, scope: !1143)
!1159 = !DILocation(line: 333, column: 2, scope: !1143)
!1160 = !DILocation(line: 336, column: 16, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 333, column: 38)
!1162 = !DILocation(line: 337, column: 3, scope: !1161)
!1163 = !DILocation(line: 341, column: 16, scope: !1161)
!1164 = !DILocation(line: 342, column: 3, scope: !1161)
!1165 = !DILocation(line: 346, column: 16, scope: !1161)
!1166 = !DILocation(line: 347, column: 3, scope: !1161)
!1167 = !DILocation(line: 351, column: 16, scope: !1161)
!1168 = !DILocation(line: 352, column: 3, scope: !1161)
!1169 = !DILocation(line: 356, column: 16, scope: !1161)
!1170 = !DILocation(line: 357, column: 3, scope: !1161)
!1171 = !DILocation(line: 363, column: 16, scope: !1161)
!1172 = !DILocation(line: 364, column: 3, scope: !1161)
!1173 = !DILocation(line: 367, column: 10, scope: !1143)
!1174 = !DILocation(line: 367, column: 2, scope: !1143)
!1175 = !DILocation(line: 368, column: 1, scope: !1143)
!1176 = distinct !DISubprogram(name: "acpi_ns_check_reference", scope: !3, file: !3, line: 288, type: !1177, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!18, !894, !43}
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "info", arg: 1, scope: !1176, file: !3, line: 288, type: !894)
!1181 = !DILocalVariable(name: "return_object", arg: 2, scope: !1176, file: !3, line: 289, type: !43)
!1182 = !DILocation(line: 288, column: 52, scope: !1176)
!1183 = !DILocation(line: 289, column: 31, scope: !1176)
!1184 = !DILocation(line: 297, column: 6, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 297, column: 6)
!1186 = !DILocation(line: 297, column: 31, scope: !1185)
!1187 = !DILocation(line: 297, column: 37, scope: !1185)
!1188 = !DILocation(line: 297, column: 6, scope: !1176)
!1189 = !DILocation(line: 298, column: 3, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 297, column: 60)
!1191 = !DILocation(line: 301, column: 2, scope: !1176)
!1192 = !DILocation(line: 306, column: 2, scope: !1176)
!1193 = !DILocation(line: 307, column: 1, scope: !1176)
!1194 = !DISubprogram(name: "acpi_ns_simple_repair", scope: !1129, file: !1129, line: 323, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!18, !894, !20, !20, !125}
!1197 = !DISubprogram(name: "acpi_ut_get_expected_return_types", scope: !1136, file: !1136, line: 490, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !76, !20}
!1200 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1136, file: !1136, line: 233, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!899, !43}
!1203 = !DISubprogram(name: "acpi_ut_get_reference_name", scope: !1136, file: !1136, line: 231, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
