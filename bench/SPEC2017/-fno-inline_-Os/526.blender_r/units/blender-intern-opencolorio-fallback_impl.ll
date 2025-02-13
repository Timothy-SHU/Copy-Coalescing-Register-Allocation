; ModuleID = 'blender/intern/opencolorio/fallback_impl.cc'
source_filename = "blender/intern/opencolorio/fallback_impl.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OCIO_PackedImageDescription = type { ptr, i64, i64, i64, i64, i64, i64 }

$_ZN9IOCIOImplD2Ev = comdat any

$_ZN12FallbackImplD0Ev = comdat any

$_ZTS9IOCIOImpl = comdat any

$_ZTI9IOCIOImpl = comdat any

@.str = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"scene_linear\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color_picking\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"texture_paint\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"default_byte\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"default_float\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"default_sequencer\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"OCIO_PackedImageDescription\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@_ZTV12FallbackImpl = dso_local unnamed_addr constant { [63 x ptr] } { [63 x ptr] [ptr null, ptr @_ZTI12FallbackImpl, ptr @_ZN9IOCIOImplD2Ev, ptr @_ZN12FallbackImplD0Ev, ptr @_ZN12FallbackImpl16getCurrentConfigEv, ptr @_ZN12FallbackImpl16setCurrentConfigEPKP23OCIO_ConstConfigRcPtr__, ptr @_ZN12FallbackImpl19configCreateFromEnvEv, ptr @_ZN12FallbackImpl20configCreateFromFileEPKc, ptr @_ZN12FallbackImpl13configReleaseEPP23OCIO_ConstConfigRcPtr__, ptr @_ZN12FallbackImpl23configGetNumColorSpacesEPP23OCIO_ConstConfigRcPtr__, ptr @_ZN12FallbackImpl30configGetColorSpaceNameByIndexEPP23OCIO_ConstConfigRcPtr__i, ptr @_ZN12FallbackImpl19configGetColorSpaceEPP23OCIO_ConstConfigRcPtr__PKc, ptr @_ZN12FallbackImpl27configGetIndexForColorSpaceEPP23OCIO_ConstConfigRcPtr__PKc, ptr @_ZN12FallbackImpl22colorSpaceIsInvertibleEPP27OCIO_ConstColorSpaceRcPtr__, ptr @_ZN12FallbackImpl16colorSpaceIsDataEPP27OCIO_ConstColorSpaceRcPtr__, ptr @_ZN12FallbackImpl17colorSpaceReleaseEPP27OCIO_ConstColorSpaceRcPtr__, ptr @_ZN12FallbackImpl23configGetDefaultDisplayEPP23OCIO_ConstConfigRcPtr__, ptr @_ZN12FallbackImpl20configGetNumDisplaysEPP23OCIO_ConstConfigRcPtr__, ptr @_ZN12FallbackImpl16configGetDisplayEPP23OCIO_ConstConfigRcPtr__i, ptr @_ZN12FallbackImpl20configGetDefaultViewEPP23OCIO_ConstConfigRcPtr__PKc, ptr @_ZN12FallbackImpl17configGetNumViewsEPP23OCIO_ConstConfigRcPtr__PKc, ptr @_ZN12FallbackImpl13configGetViewEPP23OCIO_ConstConfigRcPtr__PKci, ptr @_ZN12FallbackImpl30configGetDisplayColorSpaceNameEPP23OCIO_ConstConfigRcPtr__PKcS4_, ptr @_ZN12FallbackImpl17configGetNumLooksEPP23OCIO_ConstConfigRcPtr__, ptr @_ZN12FallbackImpl24configGetLookNameByIndexEPP23OCIO_ConstConfigRcPtr__i, ptr @_ZN12FallbackImpl13configGetLookEPP23OCIO_ConstConfigRcPtr__PKc, ptr @_ZN12FallbackImpl19lookGetProcessSpaceEPP21OCIO_ConstLookRcPtr__, ptr @_ZN12FallbackImpl11lookReleaseEPP21OCIO_ConstLookRcPtr__, ptr @_ZN12FallbackImpl27configGetProcessorWithNamesEPP23OCIO_ConstConfigRcPtr__PKcS4_, ptr @_ZN12FallbackImpl18configGetProcessorEPP23OCIO_ConstConfigRcPtr__PP26OCIO_ConstTransformRcPtr__, ptr @_ZN12FallbackImpl14processorApplyEPP26OCIO_ConstProcessorRcPtr__PP22OCIO_PackedImageDesc__, ptr @_ZN12FallbackImpl24processorApply_predivideEPP26OCIO_ConstProcessorRcPtr__PP22OCIO_PackedImageDesc__, ptr @_ZN12FallbackImpl17processorApplyRGBEPP26OCIO_ConstProcessorRcPtr__Pf, ptr @_ZN12FallbackImpl18processorApplyRGBAEPP26OCIO_ConstProcessorRcPtr__Pf, ptr @_ZN12FallbackImpl28processorApplyRGBA_predivideEPP26OCIO_ConstProcessorRcPtr__Pf, ptr @_ZN12FallbackImpl16processorReleaseEPP26OCIO_ConstProcessorRcPtr__, ptr @_ZN12FallbackImpl17colorSpaceGetNameEPP27OCIO_ConstColorSpaceRcPtr__, ptr @_ZN12FallbackImpl24colorSpaceGetDescriptionEPP27OCIO_ConstColorSpaceRcPtr__, ptr @_ZN12FallbackImpl19colorSpaceGetFamilyEPP27OCIO_ConstColorSpaceRcPtr__, ptr @_ZN12FallbackImpl22createDisplayTransformEv, ptr @_ZN12FallbackImpl38displayTransformSetInputColorSpaceNameEPP28OCIO_DisplayTransformRcPtr__PKc, ptr @_ZN12FallbackImpl26displayTransformSetDisplayEPP28OCIO_DisplayTransformRcPtr__PKc, ptr @_ZN12FallbackImpl23displayTransformSetViewEPP28OCIO_DisplayTransformRcPtr__PKc, ptr @_ZN12FallbackImpl28displayTransformSetDisplayCCEPP28OCIO_DisplayTransformRcPtr__PP26OCIO_ConstTransformRcPtr__, ptr @_ZN12FallbackImpl27displayTransformSetLinearCCEPP28OCIO_DisplayTransformRcPtr__PP26OCIO_ConstTransformRcPtr__, ptr @_ZN12FallbackImpl32displayTransformSetLooksOverrideEPP28OCIO_DisplayTransformRcPtr__PKc, ptr @_ZN12FallbackImpl39displayTransformSetLooksOverrideEnabledEPP28OCIO_DisplayTransformRcPtr__b, ptr @_ZN12FallbackImpl23displayTransformReleaseEPP28OCIO_DisplayTransformRcPtr__, ptr @_ZN12FallbackImpl26createOCIO_PackedImageDescEPfllllll, ptr @_ZN12FallbackImpl27OCIO_PackedImageDescReleaseEPP22OCIO_PackedImageDesc__, ptr @_ZN12FallbackImpl23createExponentTransformEv, ptr @_ZN12FallbackImpl25exponentTransformSetValueEPP29OCIO_ExponentTransformRcPtr__PKf, ptr @_ZN12FallbackImpl24exponentTransformReleaseEPP29OCIO_ExponentTransformRcPtr__, ptr @_ZN12FallbackImpl21createMatrixTransformEv, ptr @_ZN12FallbackImpl23matrixTransformSetValueEPP27OCIO_MatrixTransformRcPtr__PKfS4_, ptr @_ZN12FallbackImpl22matrixTransformReleaseEPP27OCIO_MatrixTransformRcPtr__, ptr @_ZN12FallbackImpl20matrixTransformScaleEPfS0_PKf, ptr @_ZN12FallbackImpl15supportGLSLDrawEv, ptr @_ZN12FallbackImpl13setupGLSLDrawEPP18OCIO_GLSLDrawStatePP26OCIO_ConstProcessorRcPtr__P25OCIO_CurveMappingSettingsfb, ptr @_ZN12FallbackImpl14finishGLSLDrawEP18OCIO_GLSLDrawState, ptr @_ZN12FallbackImpl11freeGLStateEP18OCIO_GLSLDrawState, ptr @_ZN12FallbackImpl16getVersionStringEv, ptr @_ZN12FallbackImpl13getVersionHexEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12FallbackImpl = dso_local constant [15 x i8] c"12FallbackImpl\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS9IOCIOImpl = linkonce_odr dso_local constant [11 x i8] c"9IOCIOImpl\00", comdat, align 1
@_ZTI9IOCIOImpl = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS9IOCIOImpl }, comdat, align 8
@_ZTI12FallbackImpl = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12FallbackImpl, ptr @_ZTI9IOCIOImpl }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl16getCurrentConfigEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl16setCurrentConfigEPKP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN12FallbackImpl19configCreateFromEnvEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl20configCreateFromFileEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl13configReleaseEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl23configGetNumColorSpacesEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl30configGetColorSpaceNameByIndexEPP23OCIO_ConstConfigRcPtr__i(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = icmp eq i32 %2, 1
  %5 = select i1 %4, ptr @.str.1, ptr null
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, ptr @.str, ptr %5
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl19configGetColorSpaceEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #1 align 2 {
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.2) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.5) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.6) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(18) @.str.7) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.1) #7
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr inttoptr (i64 2 to ptr), ptr null
  br label %28

28:                                               ; preds = %24, %21, %18, %15, %12, %9, %6, %3
  %29 = phi ptr [ inttoptr (i64 1 to ptr), %3 ], [ inttoptr (i64 2 to ptr), %6 ], [ inttoptr (i64 1 to ptr), %9 ], [ inttoptr (i64 2 to ptr), %12 ], [ inttoptr (i64 1 to ptr), %15 ], [ inttoptr (i64 2 to ptr), %18 ], [ inttoptr (i64 1 to ptr), %21 ], [ %27, %24 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12FallbackImpl27configGetIndexForColorSpaceEPP23OCIO_ConstConfigRcPtr__PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 9
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) #8
  %8 = icmp eq ptr %7, inttoptr (i64 2 to ptr)
  %9 = select i1 %8, i32 1, i32 -1
  %10 = icmp eq ptr %7, inttoptr (i64 1 to ptr)
  %11 = select i1 %10, i32 0, i32 %9
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl23configGetDefaultDisplayEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl20configGetNumDisplaysEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl16configGetDisplayEPP23OCIO_ConstConfigRcPtr__i(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr @.str.1, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl20configGetDefaultViewEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl17configGetNumViewsEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl13configGetViewEPP23OCIO_ConstConfigRcPtr__PKci(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 noundef %3) unnamed_addr #0 align 2 {
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, ptr @.str.8, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl30configGetDisplayColorSpaceNameEPP23OCIO_ConstConfigRcPtr__PKcS4_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl17configGetNumLooksEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl24configGetLookNameByIndexEPP23OCIO_ConstConfigRcPtr__i(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #0 align 2 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN12FallbackImpl13configGetLookEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN12FallbackImpl19lookGetProcessSpaceEPP21OCIO_ConstLookRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl11lookReleaseEPP21OCIO_ConstLookRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl22colorSpaceIsInvertibleEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl16colorSpaceIsDataEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl17colorSpaceReleaseEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN12FallbackImpl27configGetProcessorWithNamesEPP23OCIO_ConstConfigRcPtr__PKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) #8
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %3) #8
  %13 = icmp eq ptr %8, inttoptr (i64 1 to ptr)
  %14 = icmp eq ptr %12, inttoptr (i64 2 to ptr)
  %15 = and i1 %13, %14
  %16 = icmp eq ptr %8, inttoptr (i64 2 to ptr)
  %17 = icmp eq ptr %12, inttoptr (i64 1 to ptr)
  %18 = and i1 %16, %17
  %19 = select i1 %18, ptr inttoptr (i64 2 to ptr), ptr null
  %20 = select i1 %15, ptr inttoptr (i64 1 to ptr), ptr %19
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl18configGetProcessorEPP23OCIO_ConstConfigRcPtr__PP26OCIO_ConstTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr noundef readnone returned %2) unnamed_addr #0 align 2 {
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FallbackImpl14processorApplyEPP26OCIO_ConstProcessorRcPtr__PP22OCIO_PackedImageDesc__(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !37
  %6 = trunc i64 %5 to i32
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !44
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  %17 = shl i64 %5, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = and i64 %9, 4294967295
  %22 = and i64 %14, 4294967295
  br label %23

23:                                               ; preds = %12, %41
  %24 = phi i64 [ 0, %12 ], [ %42, %41 ]
  br i1 %16, label %25, label %41

25:                                               ; preds = %23
  %26 = mul nsw i64 %24, %20
  br label %27

27:                                               ; preds = %25, %38
  %28 = phi i64 [ 0, %25 ], [ %39, %38 ]
  %29 = add nuw nsw i64 %28, %26
  %30 = mul nsw i64 %29, %18
  %31 = getelementptr inbounds float, ptr %7, i64 %30
  switch i32 %6, label %38 [
    i32 4, label %33
    i32 3, label %32
  ]

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %27, %32
  %34 = phi i64 [ 30, %32 ], [ 31, %27 ]
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %31) #8
  br label %38

38:                                               ; preds = %33, %27
  %39 = add nuw nsw i64 %28, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %27, !llvm.loop !45

41:                                               ; preds = %38, %23
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %21
  br i1 %43, label %44, label %23, !llvm.loop !47

44:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FallbackImpl24processorApply_predivideEPP26OCIO_ConstProcessorRcPtr__PP22OCIO_PackedImageDesc__(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !37
  %6 = trunc i64 %5 to i32
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !44
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  %17 = shl i64 %5, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = and i64 %9, 4294967295
  %22 = and i64 %14, 4294967295
  br label %23

23:                                               ; preds = %12, %41
  %24 = phi i64 [ 0, %12 ], [ %42, %41 ]
  br i1 %16, label %25, label %41

25:                                               ; preds = %23
  %26 = mul nsw i64 %24, %20
  br label %27

27:                                               ; preds = %25, %38
  %28 = phi i64 [ 0, %25 ], [ %39, %38 ]
  %29 = add nuw nsw i64 %28, %26
  %30 = mul nsw i64 %29, %18
  %31 = getelementptr inbounds float, ptr %7, i64 %30
  switch i32 %6, label %38 [
    i32 4, label %33
    i32 3, label %32
  ]

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %27, %32
  %34 = phi i64 [ 30, %32 ], [ 32, %27 ]
  %35 = load ptr, ptr %0, align 8, !tbaa !34
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %31) #8
  br label %38

38:                                               ; preds = %33, %27
  %39 = add nuw nsw i64 %28, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %27, !llvm.loop !48

41:                                               ; preds = %38, %23
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %21
  br i1 %43, label %44, label %23, !llvm.loop !49

44:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FallbackImpl17processorApplyRGBEPP26OCIO_ConstProcessorRcPtr__Pf(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 align 2 {
  %4 = ptrtoint ptr %1 to i64
  switch i64 %4, label %7 [
    i64 1, label %5
    i64 2, label %6
  ]

5:                                                ; preds = %3
  tail call fastcc void @_ZL23linearrgb_to_srgb_v3_v3PfPKf(ptr noundef %2, ptr noundef %2) #8
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @_ZL23srgb_to_linearrgb_v3_v3PfPKf(ptr noundef %2, ptr noundef %2) #8
  br label %7

7:                                                ; preds = %3, %6, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL23linearrgb_to_srgb_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !50 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #8
  store float %4, ptr %0, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #8
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #8
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL23srgb_to_linearrgb_v3_v3PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !53 {
  %3 = load float, ptr %1, align 4, !tbaa !51
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #8
  store float %4, ptr %0, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !51
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #8
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #8
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FallbackImpl18processorApplyRGBAEPP26OCIO_ConstProcessorRcPtr__Pf(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 align 2 {
  %4 = ptrtoint ptr %1 to i64
  switch i64 %4, label %7 [
    i64 1, label %5
    i64 2, label %6
  ]

5:                                                ; preds = %3
  tail call fastcc void @_ZL20linearrgb_to_srgb_v4PfPKf(ptr noundef %2, ptr noundef %2) #8
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @_ZL20srgb_to_linearrgb_v4PfPKf(ptr noundef %2, ptr noundef %2) #8
  br label %7

7:                                                ; preds = %3, %6, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL20linearrgb_to_srgb_v4PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !54 {
  tail call fastcc void @_ZL23linearrgb_to_srgb_v3_v3PfPKf(ptr noundef %0, ptr noundef %1) #8
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL20srgb_to_linearrgb_v4PfPKf(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !55 {
  tail call fastcc void @_ZL23srgb_to_linearrgb_v3_v3PfPKf(ptr noundef %0, ptr noundef %1) #8
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FallbackImpl28processorApplyRGBA_predivideEPP26OCIO_ConstProcessorRcPtr__Pf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fcmp oeq float %5, 1.000000e+00
  %7 = fcmp oeq float %5, 0.000000e+00
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 31
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2) #8
  br label %31

13:                                               ; preds = %3
  %14 = fdiv float 1.000000e+00, %5
  %15 = load <2 x float>, ptr %2, align 4, !tbaa !51
  %16 = insertelement <2 x float> poison, float %14, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %17, %15
  store <2 x float> %18, ptr %2, align 4, !tbaa !51
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = fmul float %14, %20
  store float %21, ptr %19, align 4, !tbaa !51
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = getelementptr inbounds ptr, ptr %22, i64 31
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2) #8
  %25 = load <2 x float>, ptr %2, align 4, !tbaa !51
  %26 = insertelement <2 x float> poison, float %5, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fmul <2 x float> %27, %25
  store <2 x float> %28, ptr %2, align 4, !tbaa !51
  %29 = load float, ptr %19, align 4, !tbaa !51
  %30 = fmul float %5, %29
  store float %30, ptr %19, align 4, !tbaa !51
  br label %31

31:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl16processorReleaseEPP26OCIO_ConstProcessorRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl17colorSpaceGetNameEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr noundef readnone %1) unnamed_addr #0 align 2 {
  %3 = icmp eq ptr %1, inttoptr (i64 2 to ptr)
  %4 = select i1 %3, ptr @.str.1, ptr null
  %5 = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  %6 = select i1 %5, ptr @.str, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl24colorSpaceGetDescriptionEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl19colorSpaceGetFamilyEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl22createDisplayTransformEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl38displayTransformSetInputColorSpaceNameEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl26displayTransformSetDisplayEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl23displayTransformSetViewEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl28displayTransformSetDisplayCCEPP28OCIO_DisplayTransformRcPtr__PP26OCIO_ConstTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl27displayTransformSetLinearCCEPP28OCIO_DisplayTransformRcPtr__PP26OCIO_ConstTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl32displayTransformSetLooksOverrideEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl39displayTransformSetLooksOverrideEnabledEPP28OCIO_DisplayTransformRcPtr__b(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i1 zeroext %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl23displayTransformReleaseEPP28OCIO_DisplayTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN12FallbackImpl26createOCIO_PackedImageDescEPfllllll(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #3 align 2 {
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %10 = tail call ptr %9(i64 noundef 56, ptr noundef nonnull @.str.10) #8
  store ptr %1, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 2
  store i64 %3, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 3
  store i64 %4, ptr %13, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 4
  store i64 %5, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 5
  store i64 %6, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 6
  store i64 %7, ptr %16, align 8, !tbaa !59
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12FallbackImpl27OCIO_PackedImageDescReleaseEPP22OCIO_PackedImageDesc__(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %3(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl23createExponentTransformEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl25exponentTransformSetValueEPP29OCIO_ExponentTransformRcPtr__PKf(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl24exponentTransformReleaseEPP29OCIO_ExponentTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl21createMatrixTransformEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl23matrixTransformSetValueEPP27OCIO_MatrixTransformRcPtr__PKfS4_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl22matrixTransformReleaseEPP27OCIO_MatrixTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl20matrixTransformScaleEPfS0_PKf(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12FallbackImpl15supportGLSLDrawEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12FallbackImpl13setupGLSLDrawEPP18OCIO_GLSLDrawStatePP26OCIO_ConstProcessorRcPtr__P25OCIO_CurveMappingSettingsfb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, float %4, i1 zeroext %5) unnamed_addr #0 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl14finishGLSLDrawEP18OCIO_GLSLDrawState(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl11freeGLStateEP18OCIO_GLSLDrawState(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl16getVersionStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr @.str.11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl13getVersionHexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9IOCIOImplD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12FallbackImplD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN9IOCIOImplD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize willreturn memory(read) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !41, i64 24}
!38 = !{!"_ZTS27OCIO_PackedImageDescription", !39, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !36, i64 0}
!41 = !{!"long", !40, i64 0}
!42 = !{!38, !39, i64 0}
!43 = !{!38, !41, i64 16}
!44 = !{!38, !41, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !46}
!50 = !{!"fallback_impl.cc:_ZL23linearrgb_to_srgb_v3_v3PfPKf"}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !40, i64 0}
!53 = !{!"fallback_impl.cc:_ZL23srgb_to_linearrgb_v3_v3PfPKf"}
!54 = !{!"fallback_impl.cc:_ZL20linearrgb_to_srgb_v4PfPKf"}
!55 = !{!"fallback_impl.cc:_ZL20srgb_to_linearrgb_v4PfPKf"}
!56 = !{!39, !39, i64 0}
!57 = !{!38, !41, i64 32}
!58 = !{!38, !41, i64 40}
!59 = !{!38, !41, i64 48}
