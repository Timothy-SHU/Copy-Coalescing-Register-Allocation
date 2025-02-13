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

$_ZN11xercesc_2_78DOMErrorC2Ev = comdat any

$_ZN11xercesc_2_78DOMErrorD2Ev = comdat any

$_ZN11xercesc_2_78DOMErrorD0Ev = comdat any

$_ZTSN11xercesc_2_78DOMErrorE = comdat any

$_ZTIN11xercesc_2_78DOMErrorE = comdat any

$_ZTVN11xercesc_2_78DOMErrorE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_712DOMErrorImplE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMErrorImplE, ptr @_ZN11xercesc_2_712DOMErrorImplD2Ev, ptr @_ZN11xercesc_2_712DOMErrorImplD0Ev, ptr @_ZNK11xercesc_2_712DOMErrorImpl11getSeverityEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl10getMessageEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl11getLocationEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl19getRelatedExceptionEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl7getTypeEv, ptr @_ZNK11xercesc_2_712DOMErrorImpl14getRelatedDataEv, ptr @_ZN11xercesc_2_712DOMErrorImpl11setSeverityEs, ptr @_ZN11xercesc_2_712DOMErrorImpl10setMessageEPKt, ptr @_ZN11xercesc_2_712DOMErrorImpl11setLocationEPNS_10DOMLocatorE, ptr @_ZNK11xercesc_2_712DOMErrorImpl19setRelatedExceptionEPv, ptr @_ZN11xercesc_2_712DOMErrorImpl7setTypeEPKt, ptr @_ZN11xercesc_2_712DOMErrorImpl14setRelatedDataEPv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DOMErrorImplE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMErrorImplE\00", align 1
@_ZTSN11xercesc_2_78DOMErrorE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78DOMErrorE\00", comdat, align 1
@_ZTIN11xercesc_2_78DOMErrorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78DOMErrorE }, comdat, align 8
@_ZTIN11xercesc_2_712DOMErrorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMErrorImplE, ptr @_ZTIN11xercesc_2_78DOMErrorE }, align 8
@_ZTVN11xercesc_2_78DOMErrorE = linkonce_odr dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78DOMErrorE, ptr @_ZN11xercesc_2_78DOMErrorD2Ev, ptr @_ZN11xercesc_2_78DOMErrorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr

@_ZN11xercesc_2_712DOMErrorImplC1Es = dso_local unnamed_addr alias void (ptr, i16), ptr @_ZN11xercesc_2_712DOMErrorImplC2Es
@_ZN11xercesc_2_712DOMErrorImplC1EsPKtPNS_10DOMLocatorE = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr), ptr @_ZN11xercesc_2_712DOMErrorImplC2EsPKtPNS_10DOMLocatorE
@_ZN11xercesc_2_712DOMErrorImplC1EsPKtS2_Pv = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DOMErrorImplC2EsPKtS2_Pv
@_ZN11xercesc_2_712DOMErrorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMErrorImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712DOMErrorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_712DOMErrorImpl11getSeverityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !36
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl11getLocationEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl19getRelatedExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DOMErrorImpl14getRelatedDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl11setSeverityEs(ptr noundef nonnull align 8 dereferenceable(48) %0, i16 noundef signext %1) unnamed_addr #0 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %3, align 2, !tbaa !36
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl10setMessageEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImpl11setLocationEPNS_10DOMLocatorE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !48, !range !49, !noundef !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZNK11xercesc_2_712DOMErrorImpl19setRelatedExceptionEPv(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %4) #10
          to label %5 unwind label %6

5:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
  unreachable

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl7setTypeEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DOMErrorImpl14setRelatedDataEPv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplC2Es(ptr noundef nonnull align 8 dereferenceable(48) %0, i16 noundef signext %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOMErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %4, align 2, !tbaa !36
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_78DOMErrorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMErrorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78DOMErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplC2EsPKtPNS_10DOMLocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOMErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %6, align 2, !tbaa !36
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplC2EsPKtS2_Pv(ptr noundef nonnull align 8 dereferenceable(48) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOMErrorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 2
  store i16 %1, ptr %7, align 2, !tbaa !36
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 5
  store ptr %2, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 6
  store ptr %4, ptr %11, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMErrorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMErrorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !49, !noundef !50
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMErrorImpl", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !51
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %13

13:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_78DOMErrorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !42, i64 10}
!37 = !{!"_ZTSN11xercesc_2_712DOMErrorImplE", !38, i64 0, !39, i64 8, !42, i64 10, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!38 = !{!"_ZTSN11xercesc_2_78DOMErrorE"}
!39 = !{!"bool", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"short", !40, i64 0}
!43 = !{!"any pointer", !40, i64 0}
!44 = !{!37, !43, i64 16}
!45 = !{!37, !43, i64 24}
!46 = !{!37, !43, i64 32}
!47 = !{!37, !43, i64 40}
!48 = !{!37, !39, i64 8}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !41, i64 0}
!53 = !{!43, !43, i64 0}
