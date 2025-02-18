; ModuleID = 'DOMErrorImpl.cpp'
source_filename = "DOMErrorImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMErrorImpl" = type { %"class.xercesc_2_7::DOMError", i8, i16, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMError" = type { ptr }

$_ZNK11xercesc_2_712DOMErrorImpl11getSeverityEv = comdat any

$_ZNK11xercesc_2_712DOMErrorImpl10getMessageEv = comdat any

$_ZNK11xercesc_2_712DOMErrorImpl11getLocationEv = comdat any

$_ZNK11xercesc_2_712DOMErrorImpl19getRelatedExceptionEv = comdat any

$_ZNK11xercesc_2_712DOMErrorImpl7getTypeEv = comdat any

$_ZNK11xercesc_2_712DOMErrorImpl14getRelatedDataEv = comdat any

$_ZN11xercesc_2_712DOMErrorImpl11setSeverityEs = comdat any

$_ZN11xercesc_2_712DOMErrorImpl10setMessageEPKt = comdat any

$_ZN11xercesc_2_712DOMErrorImpl7setTypeEPKt = comdat any

$_ZN11xercesc_2_712DOMErrorImpl14setRelatedDataEPv = comdat any

$_ZTSN11xercesc_2_78DOMErrorE = comdat any

$_ZTIN11xercesc_2_78DOMErrorE = comdat any

@_ZTVN11xercesc_2_712DOMErrorImplE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMErrorImplE, ptr @_ZN11xercesc_2_712DOMErrorImplD2Ev, ptr @_ZN11xercesc_2_712DOMErrorImplD0Ev, ptr @_ZNK11xercesc_2_712DOMErrorImpl11getSeverityEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl10getMessageEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl11getLocationEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl19getRelatedExceptionEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl7getTypeEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl14getRelatedDataEv, ptr @_ZN11xercesc_2_712DOMErrorImpl11setSeverityEs, ptr @_ZN11xercesc_2_712DOMErrorImpl10setMessageEPKt, ptr @_ZN11xercesc_2_712DOMErrorImpl11setLocationEPNS_10DOMLocatorE, ptr @_ZNK11xercesc_2_712DOMErrorImpl19setRelatedExceptionEPv, ptr @_ZN11xercesc_2_712DOMErrorImpl7setTypeEPKt, ptr @_ZN11xercesc_2_712DOMErrorImpl14setRelatedDataEPv] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DOMErrorImplE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMErrorImplE\00", align 1
@_ZTSN11xercesc_2_78DOMErrorE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78DOMErrorE\00", comdat, align 1
@_ZTIN11xercesc_2_78DOMErrorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78DOMErrorE }, comdat, align 8
@_ZTIN11xercesc_2_712DOMErrorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMErrorImplE, ptr @_ZTIN11xercesc_2_78DOMErrorE }, align 8

@_ZN11xercesc_2_712DOMErrorImplC1Es = dso_local unnamed_addr alias void (ptr, i16), ptr @_ZN11xercesc_2_712DOMErrorImplC2Es
@_ZN11xercesc_2_712DOMErrorImplC1EsPKtPNS_10DOMLocatorE = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr), ptr @_ZN11xercesc_2_712DOMErrorImplC2EsPKtPNS_10DOMLocatorE
@_ZN11xercesc_2_712DOMErrorImplC1EsPKtS2_Pv = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DOMErrorImplC2EsPKtS2_Pv
@_ZN11xercesc_2_712DOMErrorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMErrorImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplC2Es(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, i16 noundef signext %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %4, align 2, !tbaa !45
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplC2EsPKtPNS_10DOMLocatorE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %6, align 2, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplC2EsPKtS2_Pv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %7, align 2, !tbaa !45
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 6
  store ptr %4, ptr %11, align 8, !tbaa !49
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !38, !range !50, !noundef !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %13

13:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !38, !range !50, !noundef !51
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %13

13:                                               ; preds = %1, %5, %9
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImpl11setLocationEPNS_10DOMLocatorE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !38, !range !50, !noundef !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xercesc_2_712DOMErrorImpl19setRelatedExceptionEPv(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #8
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #10
  unreachable

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_712DOMErrorImpl11getSeverityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !45
  ret i16 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl11getLocationEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl19getRelatedExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl14getRelatedDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl11setSeverityEs(ptr noundef nonnull align 8 dereferenceable(48) %0, i16 noundef signext %1) unnamed_addr #6 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %3, align 2, !tbaa !45
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl10setMessageEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl7setTypeEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl14setRelatedDataEPv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_712DOMErrorImplE", !40, i64 0, !41, i64 8, !43, i64 10, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40}
!40 = !{!"_ZTSN11xercesc_2_78DOMErrorE"}
!41 = !{!"bool", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"short", !42, i64 0}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!39, !43, i64 10}
!46 = !{!39, !44, i64 16}
!47 = !{!39, !44, i64 24}
!48 = !{!39, !44, i64 32}
!49 = !{!39, !44, i64 40}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!44, !44, i64 0}
