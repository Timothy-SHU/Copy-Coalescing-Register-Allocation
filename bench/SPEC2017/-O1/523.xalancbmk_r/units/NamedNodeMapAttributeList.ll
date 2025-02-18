; ModuleID = 'NamedNodeMapAttributeList.cpp'
source_filename = "NamedNodeMapAttributeList.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::NamedNodeMapAttributeList" = type { %"class.xercesc_2_7::AttributeList", ptr, i32, ptr }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_713AttributeListE = comdat any

$_ZTIN11xercesc_2_713AttributeListE = comdat any

@_ZN11xalanc_1_1025NamedNodeMapAttributeList12s_typeStringE = dso_local constant [6 x i16] [i16 67, i16 68, i16 65, i16 84, i16 65, i16 0], align 2
@_ZTVN11xalanc_1_1025NamedNodeMapAttributeListE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025NamedNodeMapAttributeListE, ptr @_ZN11xalanc_1_1025NamedNodeMapAttributeListD2Ev, ptr @_ZN11xalanc_1_1025NamedNodeMapAttributeListD0Ev, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList9getLengthEv, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList7getNameEj, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList7getTypeEj, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList8getValueEj, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList7getTypeEPKt, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList8getValueEPKt, ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList8getValueEPKc] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1025NamedNodeMapAttributeListE = dso_local constant [43 x i8] c"N11xalanc_1_1025NamedNodeMapAttributeListE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713AttributeListE\00", comdat, align 1
@_ZTIN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713AttributeListE }, comdat, align 8
@_ZTIN11xalanc_1_1025NamedNodeMapAttributeListE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025NamedNodeMapAttributeListE, ptr @_ZTIN11xercesc_2_713AttributeListE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1025NamedNodeMapAttributeListC1ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1025NamedNodeMapAttributeListC2ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1025NamedNodeMapAttributeListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1025NamedNodeMapAttributeListD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1025NamedNodeMapAttributeListC2ERKNS_17XalanNamedNodeMapERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025NamedNodeMapAttributeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %10 = add i32 %8, -1
  store i32 %10, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !38
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1025NamedNodeMapAttributeListD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1025NamedNodeMapAttributeList9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i32 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList7getNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = sub i32 %6, %1
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %7)
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !46
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList7getTypeEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #1 align 2 !prof !34 {
  ret ptr @_ZN11xalanc_1_1025NamedNodeMapAttributeList12s_typeStringE
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = sub i32 %6, %1
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %7)
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %15, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !46
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20
  ret ptr %21
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList7getTypeEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #1 align 2 !prof !34 {
  ret ptr @_ZN11xalanc_1_1025NamedNodeMapAttributeList12s_typeStringE
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList8getValueEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %6 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1)
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %12 unwind label %28

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !50
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = load ptr, ptr %3, align 8, !tbaa !52
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #9
  unreachable

26:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  %27 = icmp eq ptr %11, null
  br i1 %27, label %55, label %44

28:                                               ; preds = %2
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !50
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = load ptr, ptr %3, align 8, !tbaa !52
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #9
  unreachable

43:                                               ; preds = %28, %33
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  resume { ptr, i32 } %29

44:                                               ; preds = %26
  %45 = load ptr, ptr %11, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef nonnull align 8 dereferenceable(36) ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !46
  %51 = icmp eq i64 %50, 0
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %48, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = select i1 %51, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %53
  br label %55

55:                                               ; preds = %26, %44
  %56 = phi ptr [ %54, %44 ], [ null, %26 ]
  ret ptr %56
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025NamedNodeMapAttributeList8getValueEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::NamedNodeMapAttributeList", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
          to label %6 unwind label %33

6:                                                ; preds = %2
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1, i32 noundef -1)
          to label %8 unwind label %33

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !46
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %13
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %14)
          to label %19 unwind label %33

19:                                               ; preds = %8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %12, align 8, !tbaa !51
  %25 = load ptr, ptr %3, align 8, !tbaa !52
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24)
          to label %32 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #9
  unreachable

32:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret ptr %18

33:                                               ; preds = %6, %2, %8
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = load ptr, ptr %3, align 8, !tbaa !52
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #9
  unreachable

48:                                               ; preds = %33, %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  resume { ptr, i32 } %34
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !44, i64 16}
!42 = !{!"_ZTSN11xalanc_1_1025NamedNodeMapAttributeListE", !43, i64 0, !39, i64 8, !44, i64 16, !39, i64 24}
!43 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!44 = !{!"int", !40, i64 0}
!45 = !{!42, !39, i64 8}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !39, i64 0, !48, i64 8, !48, i64 16, !39, i64 24}
!48 = !{!"long", !40, i64 0}
!49 = !{!42, !39, i64 24}
!50 = !{!47, !48, i64 16}
!51 = !{!47, !39, i64 24}
!52 = !{!47, !39, i64 0}
