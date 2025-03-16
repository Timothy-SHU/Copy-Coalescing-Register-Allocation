; ModuleID = 'iconfig.c'
source_filename = "iconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_main_instance_s = type { ptr, ptr, ptr, i32, i64, i32, i32, i32, i32, %struct.gs_file_path_s }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, ptr, ptr, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.anon = type { %struct.tas_s, ptr }
%struct.anon.0 = type { %struct.tas_s, ptr }

@gs_main_instance_init_values = dso_local local_unnamed_addr constant %struct.gs_main_instance_s { ptr null, ptr null, ptr null, i32 20000, i64 0, i32 -1, i32 0, i32 1, i32 1, %struct.gs_file_path_s zeroinitializer }, align 8
@.str = private unnamed_addr constant [12 x i8] c"gs_type1.ps\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gs_dps1.ps\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gs_lev2.ps\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gs_res.ps\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gs_typ42.ps\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gs_cidfn.ps\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gs_cmap.ps\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"gs_setpd.ps\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gs_btokn.ps\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gs_dps2.ps\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gs_mex_e.ps\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"gs_mro_e.ps\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"gs_pdf_e.ps\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gs_wan_e.ps\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"gs_pdf.ps\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gs_l2img.ps\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"pdf_base.ps\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"pdf_draw.ps\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"pdf_font.ps\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"pdf_main.ps\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"pdf_sec.ps\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"pdf_2ps.ps\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gs_cff.ps\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"gs_ttf.ps\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"gs_pdfwr.ps\00", align 1
@gs_init_file_array = dso_local local_unnamed_addr global [26 x %struct.anon] [%struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.1 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.2 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.3 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.4 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.5 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.6 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.7 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.8 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.9 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.10 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.11 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.12 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.13 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.14 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.15 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.16 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.17 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.18 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.19 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.20 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.21 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.22 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.23 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.24 }, %struct.anon { %struct.tas_s { i16 4704, i16 0 }, ptr null }], align 16
@.str.25 = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"PostScriptLevel1\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"PostScriptLevel2\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@gs_emulator_name_array = dso_local local_unnamed_addr global [5 x %struct.anon.0] [%struct.anon.0 { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.25 }, %struct.anon.0 { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.26 }, %struct.anon.0 { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.27 }, %struct.anon.0 { %struct.tas_s { i16 4704, i16 0 }, ptr @.str.28 }, %struct.anon.0 { %struct.tas_s { i16 4704, i16 0 }, ptr null }], align 16
@op_defs_all = dso_local local_unnamed_addr global [72 x ptr] [ptr @zchar1_op_defs, ptr @zfont1_op_defs, ptr @zmisc1_op_defs, ptr @zvmem2_op_defs, ptr @zdps1_l2_op_defs, ptr @zmisc2_op_defs, ptr @zusparam_op_defs, ptr @zchar42_op_defs, ptr @zfont42_op_defs, ptr @zcid_op_defs, ptr @zcie_l2_op_defs, ptr @zcrd_l2_op_defs, ptr @zfcmap_op_defs, ptr @zfont0_op_defs, ptr @zchar2_op_defs, ptr @zfdcte_op_defs, ptr @zfdctd_op_defs, ptr @zdevice2_l2_op_defs, ptr @ziodev2_l2_op_defs, ptr @zmedia2_l2_op_defs, ptr @zbseq_l2_op_defs, ptr @zcolor1_op_defs, ptr @zht1_op_defs, ptr @zupath_l2_op_defs, ptr @ireclaim_l2_op_defs, ptr @zchar2_l2_op_defs, ptr @zfdecode_op_defs, ptr @zfilter2_op_defs, ptr @zarith_op_defs, ptr @zarray_op_defs, ptr @zcontrol_op_defs, ptr @zdict_op_defs, ptr @zfile_op_defs, ptr @zfileio_op_defs, ptr @zfilter_op_defs, ptr @zfproc_op_defs, ptr @zgeneric_op_defs, ptr @ziodev_op_defs, ptr @zmath_op_defs, ptr @zmisc_op_defs, ptr @zpacked_op_defs, ptr @zrelbit_op_defs, ptr @zstack_op_defs, ptr @zstring_op_defs, ptr @zsysvm_op_defs, ptr @ztoken_op_defs, ptr @ztype_op_defs, ptr @zvmem_op_defs, ptr @zchar_op_defs, ptr @zcolor_op_defs, ptr @zdevice_op_defs, ptr @zfont_op_defs, ptr @zfont2_op_defs, ptr @zgstate_op_defs, ptr @zht_op_defs, ptr @zimage_op_defs, ptr @zmatrix_op_defs, ptr @zpaint_op_defs, ptr @zpath_op_defs, ptr @zfbcp_op_defs, ptr @zhsb_op_defs, ptr @zpath1_op_defs, ptr @zpcolor_l2_op_defs, ptr @zcolor2_l2_op_defs, ptr @zcsindex_l2_op_defs, ptr @zht2_l2_op_defs, ptr @zimage2_l2_op_defs, ptr @zcssepr_l2_op_defs, ptr @zfilterx_op_defs, ptr @zfzlib_op_defs, ptr @interp_op_defs, ptr null], align 16

declare ptr @zchar1_op_defs() #0

declare ptr @zfont1_op_defs() #0

declare ptr @zmisc1_op_defs() #0

declare ptr @zvmem2_op_defs() #0

declare ptr @zdps1_l2_op_defs() #0

declare ptr @zmisc2_op_defs() #0

declare ptr @zusparam_op_defs() #0

declare ptr @zchar42_op_defs() #0

declare ptr @zfont42_op_defs() #0

declare ptr @zcid_op_defs() #0

declare ptr @zcie_l2_op_defs() #0

declare ptr @zcrd_l2_op_defs() #0

declare ptr @zfcmap_op_defs() #0

declare ptr @zfont0_op_defs() #0

declare ptr @zchar2_op_defs() #0

declare ptr @zfdcte_op_defs() #0

declare ptr @zfdctd_op_defs() #0

declare ptr @zdevice2_l2_op_defs() #0

declare ptr @ziodev2_l2_op_defs() #0

declare ptr @zmedia2_l2_op_defs() #0

declare ptr @zbseq_l2_op_defs() #0

declare ptr @zcolor1_op_defs() #0

declare ptr @zht1_op_defs() #0

declare ptr @zupath_l2_op_defs() #0

declare ptr @ireclaim_l2_op_defs() #0

declare ptr @zchar2_l2_op_defs() #0

declare ptr @zfdecode_op_defs() #0

declare ptr @zfilter2_op_defs() #0

declare ptr @zarith_op_defs() #0

declare ptr @zarray_op_defs() #0

declare ptr @zcontrol_op_defs() #0

declare ptr @zdict_op_defs() #0

declare ptr @zfile_op_defs() #0

declare ptr @zfileio_op_defs() #0

declare ptr @zfilter_op_defs() #0

declare ptr @zfproc_op_defs() #0

declare ptr @zgeneric_op_defs() #0

declare ptr @ziodev_op_defs() #0

declare ptr @zmath_op_defs() #0

declare ptr @zmisc_op_defs() #0

declare ptr @zpacked_op_defs() #0

declare ptr @zrelbit_op_defs() #0

declare ptr @zstack_op_defs() #0

declare ptr @zstring_op_defs() #0

declare ptr @zsysvm_op_defs() #0

declare ptr @ztoken_op_defs() #0

declare ptr @ztype_op_defs() #0

declare ptr @zvmem_op_defs() #0

declare ptr @zchar_op_defs() #0

declare ptr @zcolor_op_defs() #0

declare ptr @zdevice_op_defs() #0

declare ptr @zfont_op_defs() #0

declare ptr @zfont2_op_defs() #0

declare ptr @zgstate_op_defs() #0

declare ptr @zht_op_defs() #0

declare ptr @zimage_op_defs() #0

declare ptr @zmatrix_op_defs() #0

declare ptr @zpaint_op_defs() #0

declare ptr @zpath_op_defs() #0

declare ptr @zfbcp_op_defs() #0

declare ptr @zhsb_op_defs() #0

declare ptr @zpath1_op_defs() #0

declare ptr @zpcolor_l2_op_defs() #0

declare ptr @zcolor2_l2_op_defs() #0

declare ptr @zcsindex_l2_op_defs() #0

declare ptr @zht2_l2_op_defs() #0

declare ptr @zimage2_l2_op_defs() #0

declare ptr @zcssepr_l2_op_defs() #0

declare ptr @zfilterx_op_defs() #0

declare ptr @zfzlib_op_defs() #0

declare ptr @interp_op_defs() #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
