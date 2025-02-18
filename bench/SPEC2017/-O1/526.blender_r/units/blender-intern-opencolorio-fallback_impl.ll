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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl16getCurrentConfigEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl16setCurrentConfigEPKP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN12FallbackImpl19configCreateFromEnvEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl20configCreateFromFileEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl13configReleaseEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl23configGetNumColorSpacesEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl30configGetColorSpaceNameByIndexEPP23OCIO_ConstConfigRcPtr__i(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = icmp eq i32 %2, 1
  %5 = select i1 %4, ptr @.str.1, ptr null
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, ptr @.str, ptr %5
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl19configGetColorSpaceEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #1 align 2 {
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.2) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(13) @.str.5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.6) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(18) @.str.7) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.1) #8
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr inttoptr (i64 2 to ptr), ptr null
  br label %28

28:                                               ; preds = %24, %21, %18, %15, %12, %9, %6, %3
  %29 = phi ptr [ inttoptr (i64 1 to ptr), %3 ], [ inttoptr (i64 2 to ptr), %6 ], [ inttoptr (i64 1 to ptr), %9 ], [ inttoptr (i64 2 to ptr), %12 ], [ inttoptr (i64 1 to ptr), %15 ], [ inttoptr (i64 2 to ptr), %18 ], [ inttoptr (i64 1 to ptr), %21 ], [ %27, %24 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12FallbackImpl27configGetIndexForColorSpaceEPP23OCIO_ConstConfigRcPtr__PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 9
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp eq ptr %7, inttoptr (i64 2 to ptr)
  %9 = select i1 %8, i32 1, i32 -1
  %10 = icmp eq ptr %7, inttoptr (i64 1 to ptr)
  %11 = select i1 %10, i32 0, i32 %9
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl23configGetDefaultDisplayEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl20configGetNumDisplaysEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl16configGetDisplayEPP23OCIO_ConstConfigRcPtr__i(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr @.str.1, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl20configGetDefaultViewEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl17configGetNumViewsEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl13configGetViewEPP23OCIO_ConstConfigRcPtr__PKci(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 noundef %3) unnamed_addr #0 align 2 {
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, ptr @.str.8, ptr null
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl30configGetDisplayColorSpaceNameEPP23OCIO_ConstConfigRcPtr__PKcS4_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl17configGetNumLooksEPP23OCIO_ConstConfigRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl24configGetLookNameByIndexEPP23OCIO_ConstConfigRcPtr__i(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #0 align 2 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN12FallbackImpl13configGetLookEPP23OCIO_ConstConfigRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN12FallbackImpl19lookGetProcessSpaceEPP21OCIO_ConstLookRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl11lookReleaseEPP21OCIO_ConstLookRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl22colorSpaceIsInvertibleEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl16colorSpaceIsDataEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl17colorSpaceReleaseEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN12FallbackImpl27configGetProcessorWithNamesEPP23OCIO_ConstConfigRcPtr__PKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2)
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %9, i64 9
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %3)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl18configGetProcessorEPP23OCIO_ConstConfigRcPtr__PP26OCIO_ConstTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr noundef readnone returned %2) unnamed_addr #0 align 2 {
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12FallbackImpl14processorApplyEPP26OCIO_ConstProcessorRcPtr__PP22OCIO_PackedImageDesc__(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !37
  %6 = trunc i64 %5 to i32
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !44
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = trunc i64 %9 to i32
  %16 = icmp sgt i32 %15, 0
  %17 = shl i64 %5, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %9, 32
  %20 = ashr exact i64 %19, 32
  %21 = and i64 %11, 4294967295
  %22 = and i64 %9, 4294967295
  br label %23

23:                                               ; preds = %14, %41
  %24 = phi i64 [ 0, %14 ], [ %42, %41 ]
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
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %31)
  br label %38

38:                                               ; preds = %33, %27
  %39 = add nuw nsw i64 %28, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %27, !llvm.loop !45

41:                                               ; preds = %38, %23
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %21
  br i1 %43, label %44, label %23, !llvm.loop !48

44:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12FallbackImpl24processorApply_predivideEPP26OCIO_ConstProcessorRcPtr__PP22OCIO_PackedImageDesc__(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !37
  %6 = trunc i64 %5 to i32
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %2, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !44
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = trunc i64 %9 to i32
  %16 = icmp sgt i32 %15, 0
  %17 = shl i64 %5, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %9, 32
  %20 = ashr exact i64 %19, 32
  %21 = and i64 %11, 4294967295
  %22 = and i64 %9, 4294967295
  br label %23

23:                                               ; preds = %14, %41
  %24 = phi i64 [ 0, %14 ], [ %42, %41 ]
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
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %31)
  br label %38

38:                                               ; preds = %33, %27
  %39 = add nuw nsw i64 %28, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %27, !llvm.loop !49

41:                                               ; preds = %38, %23
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %21
  br i1 %43, label %44, label %23, !llvm.loop !50

44:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12FallbackImpl17processorApplyRGBEPP26OCIO_ConstProcessorRcPtr__Pf(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 align 2 {
  %4 = ptrtoint ptr %1 to i64
  switch i64 %4, label %23 [
    i64 1, label %5
    i64 2, label %14
  ]

5:                                                ; preds = %3
  %6 = load float, ptr %2, align 4, !tbaa !51
  %7 = tail call float @linearrgb_to_srgb(float noundef %6)
  store float %7, ptr %2, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = tail call float @linearrgb_to_srgb(float noundef %9)
  store float %10, ptr %8, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = tail call float @linearrgb_to_srgb(float noundef %12)
  store float %13, ptr %11, align 4, !tbaa !51
  br label %23

14:                                               ; preds = %3
  %15 = load float, ptr %2, align 4, !tbaa !51
  %16 = tail call float @srgb_to_linearrgb(float noundef %15)
  store float %16, ptr %2, align 4, !tbaa !51
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = tail call float @srgb_to_linearrgb(float noundef %18)
  store float %19, ptr %17, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = tail call float @srgb_to_linearrgb(float noundef %21)
  store float %22, ptr %20, align 4, !tbaa !51
  br label %23

23:                                               ; preds = %3, %14, %5
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12FallbackImpl18processorApplyRGBAEPP26OCIO_ConstProcessorRcPtr__Pf(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 align 2 {
  %4 = ptrtoint ptr %1 to i64
  switch i64 %4, label %23 [
    i64 1, label %5
    i64 2, label %14
  ]

5:                                                ; preds = %3
  %6 = load float, ptr %2, align 4, !tbaa !51
  %7 = tail call float @linearrgb_to_srgb(float noundef %6)
  store float %7, ptr %2, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = tail call float @linearrgb_to_srgb(float noundef %9)
  store float %10, ptr %8, align 4, !tbaa !51
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !51
  %13 = tail call float @linearrgb_to_srgb(float noundef %12)
  store float %13, ptr %11, align 4, !tbaa !51
  br label %23

14:                                               ; preds = %3
  %15 = load float, ptr %2, align 4, !tbaa !51
  %16 = tail call float @srgb_to_linearrgb(float noundef %15)
  store float %16, ptr %2, align 4, !tbaa !51
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = tail call float @srgb_to_linearrgb(float noundef %18)
  store float %19, ptr %17, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = tail call float @srgb_to_linearrgb(float noundef %21)
  store float %22, ptr %20, align 4, !tbaa !51
  br label %23

23:                                               ; preds = %3, %14, %5
  ret void
}

; Function Attrs: mustprogress uwtable
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
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2)
  br label %32

13:                                               ; preds = %3
  %14 = fdiv float 1.000000e+00, %5
  %15 = load float, ptr %2, align 4, !tbaa !51
  %16 = fmul float %14, %15
  store float %16, ptr %2, align 4, !tbaa !51
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !51
  %19 = fmul float %14, %18
  store float %19, ptr %17, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fmul float %14, %21
  store float %22, ptr %20, align 4, !tbaa !51
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr inbounds ptr, ptr %23, i64 31
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2)
  %26 = load float, ptr %2, align 4, !tbaa !51
  %27 = fmul float %5, %26
  store float %27, ptr %2, align 4, !tbaa !51
  %28 = load float, ptr %17, align 4, !tbaa !51
  %29 = fmul float %5, %28
  store float %29, ptr %17, align 4, !tbaa !51
  %30 = load float, ptr %20, align 4, !tbaa !51
  %31 = fmul float %5, %30
  store float %31, ptr %20, align 4, !tbaa !51
  br label %32

32:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl16processorReleaseEPP26OCIO_ConstProcessorRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN12FallbackImpl17colorSpaceGetNameEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr noundef readnone %1) unnamed_addr #0 align 2 {
  %3 = icmp eq ptr %1, inttoptr (i64 2 to ptr)
  %4 = select i1 %3, ptr @.str.1, ptr null
  %5 = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  %6 = select i1 %5, ptr @.str, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl24colorSpaceGetDescriptionEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl19colorSpaceGetFamilyEPP27OCIO_ConstColorSpaceRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl22createDisplayTransformEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl38displayTransformSetInputColorSpaceNameEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl26displayTransformSetDisplayEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl23displayTransformSetViewEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl28displayTransformSetDisplayCCEPP28OCIO_DisplayTransformRcPtr__PP26OCIO_ConstTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl27displayTransformSetLinearCCEPP28OCIO_DisplayTransformRcPtr__PP26OCIO_ConstTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl32displayTransformSetLooksOverrideEPP28OCIO_DisplayTransformRcPtr__PKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl39displayTransformSetLooksOverrideEnabledEPP28OCIO_DisplayTransformRcPtr__b(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i1 zeroext %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl23displayTransformReleaseEPP28OCIO_DisplayTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN12FallbackImpl26createOCIO_PackedImageDescEPfllllll(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #3 align 2 {
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %10 = tail call ptr %9(i64 noundef 56, ptr noundef nonnull @.str.10)
  store ptr %1, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 2
  store i64 %3, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 3
  store i64 %4, ptr %13, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 4
  store i64 %5, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 5
  store i64 %6, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.OCIO_PackedImageDescription, ptr %10, i64 0, i32 6
  store i64 %7, ptr %16, align 8, !tbaa !56
  ret ptr %10
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12FallbackImpl27OCIO_PackedImageDescReleaseEPP22OCIO_PackedImageDesc__(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %3(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl23createExponentTransformEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl25exponentTransformSetValueEPP29OCIO_ExponentTransformRcPtr__PKf(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl24exponentTransformReleaseEPP29OCIO_ExponentTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl21createMatrixTransformEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl23matrixTransformSetValueEPP27OCIO_MatrixTransformRcPtr__PKfS4_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl22matrixTransformReleaseEPP27OCIO_MatrixTransformRcPtr__(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl20matrixTransformScaleEPfS0_PKf(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12FallbackImpl15supportGLSLDrawEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12FallbackImpl13setupGLSLDrawEPP18OCIO_GLSLDrawStatePP26OCIO_ConstProcessorRcPtr__P25OCIO_CurveMappingSettingsfb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, float %4, i1 zeroext %5) unnamed_addr #0 align 2 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl14finishGLSLDrawEP18OCIO_GLSLDrawState(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12FallbackImpl11freeGLStateEP18OCIO_GLSLDrawState(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN12FallbackImpl16getVersionStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret ptr @.str.11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12FallbackImpl13getVersionHexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9IOCIOImplD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12FallbackImplD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #6

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
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
!43 = !{!38, !41, i64 8}
!44 = !{!38, !41, i64 16}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !46, !47}
!50 = distinct !{!50, !46, !47}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !40, i64 0}
!53 = !{!39, !39, i64 0}
!54 = !{!38, !41, i64 32}
!55 = !{!38, !41, i64 40}
!56 = !{!38, !41, i64 48}
