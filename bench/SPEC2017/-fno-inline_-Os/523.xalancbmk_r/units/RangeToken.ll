; ModuleID = 'RangeToken.cpp'
source_filename = "RangeToken.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_75Token12getTokenTypeEv = comdat any

$_ZN11xercesc_2_710RangeToken9createMapEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_75Token8getChildEi = comdat any

$_ZNK11xercesc_2_75Token4sizeEv = comdat any

$_ZNK11xercesc_2_75Token6getMinEv = comdat any

$_ZNK11xercesc_2_75Token6getMaxEv = comdat any

$_ZNK11xercesc_2_75Token10getNoParenEv = comdat any

$_ZNK11xercesc_2_75Token14getReferenceNoEv = comdat any

$_ZNK11xercesc_2_75Token9getStringEv = comdat any

$_ZNK11xercesc_2_75Token7getCharEv = comdat any

$_ZN11xercesc_2_75Token6setMinEi = comdat any

$_ZN11xercesc_2_75Token6setMaxEi = comdat any

$_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZN11xercesc_2_710RangeToken7MAPSIZEE = dso_local local_unnamed_addr constant i32 256, align 4
@_ZN11xercesc_2_710RangeToken11INITIALSIZEE = dso_local local_unnamed_addr constant i32 16, align 4
@_ZTVN11xercesc_2_710RangeTokenE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710RangeTokenE, ptr @_ZN11xercesc_2_710RangeTokenD2Ev, ptr @_ZN11xercesc_2_710RangeTokenD0Ev, ptr @_ZNK11xercesc_2_75Token8getChildEi, ptr @_ZNK11xercesc_2_75Token4sizeEv, ptr @_ZNK11xercesc_2_75Token6getMinEv, ptr @_ZNK11xercesc_2_75Token6getMaxEv, ptr @_ZNK11xercesc_2_75Token10getNoParenEv, ptr @_ZNK11xercesc_2_75Token14getReferenceNoEv, ptr @_ZNK11xercesc_2_75Token9getStringEv, ptr @_ZNK11xercesc_2_75Token7getCharEv, ptr @_ZN11xercesc_2_75Token6setMinEi, ptr @_ZN11xercesc_2_75Token6setMaxEi, ptr @_ZN11xercesc_2_710RangeToken8addRangeEii, ptr @_ZN11xercesc_2_710RangeToken11mergeRangesEPKNS_5TokenE, ptr @_ZN11xercesc_2_710RangeToken10sortRangesEv, ptr @_ZN11xercesc_2_710RangeToken13compactRangesEv, ptr @_ZN11xercesc_2_710RangeToken14subtractRangesEPS0_, ptr @_ZN11xercesc_2_710RangeToken15intersectRangesEPS0_, ptr @_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"RangeToken.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_75Token9UTF16_MAXE = external local_unnamed_addr constant i32, align 4
@_ZTSN11xercesc_2_710RangeTokenE = dso_local constant [28 x i8] c"N11xercesc_2_710RangeTokenE\00", align 1
@_ZTIN11xercesc_2_75TokenE = external constant ptr
@_ZTIN11xercesc_2_710RangeTokenE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710RangeTokenE, ptr @_ZTIN11xercesc_2_75TokenE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/regx/Token.hpp\00", align 1

@_ZN11xercesc_2_710RangeTokenC1EtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_710RangeTokenC2EtPNS_13MemoryManagerE
@_ZN11xercesc_2_710RangeTokenD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710RangeTokenD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeTokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2) #8
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710RangeTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !56
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !57
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 16, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %2, ptr %10, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710RangeTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = load ptr, ptr %3, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #8
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = load ptr, ptr %10, align 8, !tbaa !45
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #8
          to label %16 unwind label %17

16:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #10
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeTokenD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_710RangeTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %69

8:                                                ; preds = %2
  %9 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %10 = icmp eq i16 %9, 5
  %11 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %10) #8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !58
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  br label %25

18:                                               ; preds = %39, %8
  %19 = load ptr, ptr %11, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull %0) #8
  %22 = load ptr, ptr %11, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 15
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(72) %11) #8
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %11) #8
  store ptr %11, ptr %3, align 8, !tbaa !64
  br label %69

25:                                               ; preds = %15, %39
  %26 = phi i32 [ %13, %15 ], [ %40, %39 ]
  %27 = phi ptr [ %17, %15 ], [ %41, %39 ]
  %28 = phi i32 [ 0, %15 ], [ %42, %39 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = or disjoint i32 %28, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %27, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !65
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %39, label %45

37:                                               ; preds = %62
  %38 = load i32, ptr %12, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %37, %25
  %40 = phi i32 [ %38, %37 ], [ %26, %25 ]
  %41 = phi ptr [ %65, %37 ], [ %27, %25 ]
  %42 = add i32 %28, 2
  %43 = add i32 %40, -1
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %25, label %18, !llvm.loop !66

45:                                               ; preds = %25, %62
  %46 = phi i32 [ %64, %62 ], [ %31, %25 ]
  %47 = add i32 %46, -65
  %48 = icmp ult i32 %47, 26
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = or disjoint i32 %46, 32
  %51 = load ptr, ptr %11, align 8, !tbaa !45
  %52 = getelementptr inbounds ptr, ptr %51, i64 12
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %50, i32 noundef %50) #8
  br label %62

54:                                               ; preds = %45
  %55 = add i32 %46, -97
  %56 = icmp ult i32 %55, 26
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = add nsw i32 %46, -32
  %59 = load ptr, ptr %11, align 8, !tbaa !45
  %60 = getelementptr inbounds ptr, ptr %59, i64 12
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %58, i32 noundef %58) #8
  br label %62

62:                                               ; preds = %49, %57, %54
  %63 = phi i32 [ %50, %49 ], [ %58, %57 ], [ %46, %54 ]
  %64 = add nsw i32 %63, 1
  %65 = load ptr, ptr %16, align 8, !tbaa !62
  %66 = getelementptr inbounds i32, ptr %65, i64 %33
  %67 = load i32, ptr %66, align 4, !tbaa !65
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %45, label %37, !llvm.loop !68

69:                                               ; preds = %18, %2
  %70 = phi ptr [ %11, %18 ], [ %4, %2 ]
  ret ptr %70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !70
  ret i16 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !72

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7, !prof !74

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %9) #8
  store ptr null, ptr %8, align 8, !tbaa !61
  %17 = load ptr, ptr %4, align 8, !tbaa !62
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi ptr [ %17, %11 ], [ %5, %7 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 0, ptr %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %19) #8
  br label %26

26:                                               ; preds = %18, %3
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 %2, ptr %27, align 4, !tbaa !59
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 %2, ptr %28, align 8, !tbaa !58
  store ptr %1, ptr %4, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken8addRangeEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !64
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24, !prof !76

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = load ptr, ptr %12, align 8, !tbaa !45
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %16) #8
  store ptr %20, ptr %7, align 8, !tbaa !62
  store i32 %5, ptr %20, align 4, !tbaa !65
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %6, ptr %21, align 4, !tbaa !65
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 2, ptr %22, align 8, !tbaa !58
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 1, ptr %23, align 8, !tbaa !48
  br label %69

24:                                               ; preds = %3
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !58
  %27 = add i32 %26, -1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %8, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !65
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %33, label %34, !prof !77

33:                                               ; preds = %24
  store i32 %6, ptr %29, align 4, !tbaa !65
  br label %69

34:                                               ; preds = %24
  %35 = add i32 %26, 2
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %44, label %39, !prof !78

39:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_710RangeToken6expandEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2) #8
  %40 = load ptr, ptr %7, align 8, !tbaa !62
  %41 = load i32, ptr %25, align 8, !tbaa !58
  %42 = add i32 %41, -1
  %43 = zext i32 %42 to i64
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i64 [ %43, %39 ], [ %28, %34 ]
  %46 = phi i32 [ %41, %39 ], [ %26, %34 ]
  %47 = phi ptr [ %40, %39 ], [ %8, %34 ]
  %48 = getelementptr inbounds i32, ptr %47, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !65
  %50 = icmp slt i32 %49, %5
  %51 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  br i1 %50, label %52, label %55, !prof !79

52:                                               ; preds = %44
  %53 = load i8, ptr %51, align 8, !tbaa !48, !range !80
  %54 = icmp eq i8 %53, 0
  br label %56

55:                                               ; preds = %44
  store i8 0, ptr %51, align 8, !tbaa !48
  br label %56

56:                                               ; preds = %52, %55
  %57 = phi i1 [ %54, %52 ], [ true, %55 ]
  %58 = add i32 %46, 1
  store i32 %58, ptr %25, align 8, !tbaa !58
  %59 = zext i32 %46 to i64
  %60 = getelementptr inbounds i32, ptr %47, i64 %59
  store i32 %5, ptr %60, align 4, !tbaa !65
  %61 = load i32, ptr %25, align 8, !tbaa !58
  %62 = add i32 %61, 1
  store i32 %62, ptr %25, align 8, !tbaa !58
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, ptr %47, i64 %63
  store i32 %6, ptr %64, align 4, !tbaa !65
  br i1 %57, label %65, label %69, !prof !81

65:                                               ; preds = %56
  %66 = load ptr, ptr %0, align 8, !tbaa !45
  %67 = getelementptr inbounds ptr, ptr %66, i64 14
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  br label %69

69:                                               ; preds = %10, %65, %56, %33
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken6expandEj(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = add i32 %4, %1
  %6 = uitofp i32 %4 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %5, i32 %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = load ptr, ptr %11, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %13) #8
  %18 = load i32, ptr %3, align 8, !tbaa !58
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  br i1 %19, label %22, label %29, !prof !83

22:                                               ; preds = %29, %2
  %23 = load ptr, ptr %10, align 8, !tbaa !60
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %23, align 8, !tbaa !45
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #8
  store ptr %17, ptr %24, align 8, !tbaa !62
  %28 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 %9, ptr %28, align 4, !tbaa !59
  ret void

29:                                               ; preds = %2, %29
  %30 = phi i64 [ %34, %29 ], [ 0, %2 ]
  %31 = getelementptr inbounds i32, ptr %21, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !65
  %33 = getelementptr inbounds i32, ptr %17, i64 %30
  store i32 %32, ptr %33, align 4, !tbaa !65
  %34 = add nuw nsw i64 %30, 1
  %35 = load i32, ptr %3, align 8, !tbaa !58
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %29, label %22, !prof !84, !llvm.loop !85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken10sortRangesEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !80, !noundef !87
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %55, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9, !prof !89

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = add i32 %11, -4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19, !prof !90

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %20
  %17 = phi i64 [ %15, %14 ], [ %21, %20 ]
  %18 = load i32, ptr %7, align 4, !tbaa !65
  br label %23

19:                                               ; preds = %20, %9
  store i8 1, ptr %2, align 8, !tbaa !48
  br label %55

20:                                               ; preds = %52
  %21 = add nsw i64 %17, -2
  %22 = icmp sgt i64 %17, 1
  br i1 %22, label %16, label %19, !prof !91, !llvm.loop !92

23:                                               ; preds = %16, %52
  %24 = phi i32 [ %18, %16 ], [ %53, %52 ]
  %25 = phi i64 [ 0, %16 ], [ %27, %52 ]
  %26 = getelementptr inbounds i32, ptr %7, i64 %25
  %27 = add nuw nsw i64 %25, 2
  %28 = getelementptr inbounds i32, ptr %7, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !65
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %37, !prof !93

31:                                               ; preds = %23
  %32 = getelementptr i32, ptr %26, i64 3
  %33 = load i32, ptr %32, align 4, !tbaa !65
  %34 = or disjoint i64 %25, 1
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !65
  br label %46

37:                                               ; preds = %23
  %38 = icmp eq i32 %24, %29
  br i1 %38, label %39, label %52, !prof !94

39:                                               ; preds = %37
  %40 = or disjoint i64 %25, 1
  %41 = getelementptr inbounds i32, ptr %7, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !65
  %43 = getelementptr i32, ptr %26, i64 3
  %44 = load i32, ptr %43, align 4, !tbaa !65
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %31, %39
  %47 = phi i32 [ %36, %31 ], [ %42, %39 ]
  %48 = phi i64 [ %34, %31 ], [ %40, %39 ]
  %49 = phi i32 [ %33, %31 ], [ %44, %39 ]
  store i32 %24, ptr %28, align 4, !tbaa !65
  store i32 %29, ptr %26, align 4, !tbaa !65
  %50 = getelementptr i32, ptr %26, i64 3
  %51 = getelementptr inbounds i32, ptr %7, i64 %48
  store i32 %47, ptr %50, align 4, !tbaa !65
  store i32 %49, ptr %51, align 4, !tbaa !65
  br label %52

52:                                               ; preds = %37, %39, %46
  %53 = phi i32 [ %29, %37 ], [ %24, %39 ], [ %24, %46 ]
  %54 = icmp sgt i64 %27, %17
  br i1 %54, label %20, label %23, !prof !95, !llvm.loop !96

55:                                               ; preds = %1, %5, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken13compactRangesEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !56, !range !80, !noundef !87
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %76, !prof !97

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9, !prof !98

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %76, label %13, !prof !99

13:                                               ; preds = %9, %70
  %14 = phi i32 [ %71, %70 ], [ %11, %9 ]
  %15 = phi i32 [ %73, %70 ], [ 0, %9 ]
  %16 = phi i32 [ %72, %70 ], [ 0, %9 ]
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21, !prof !100

18:                                               ; preds = %13
  %19 = or disjoint i32 %15, 1
  %20 = zext i32 %19 to i64
  br label %35

21:                                               ; preds = %13
  %22 = add nuw i32 %16, 1
  %23 = zext i32 %16 to i64
  %24 = getelementptr inbounds i32, ptr %7, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = zext i32 %15 to i64
  %27 = getelementptr inbounds i32, ptr %7, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !65
  %28 = zext i32 %22 to i64
  %29 = getelementptr inbounds i32, ptr %7, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !65
  %31 = or disjoint i32 %15, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %7, i64 %32
  store i32 %30, ptr %33, align 4, !tbaa !65
  %34 = load i32, ptr %10, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %18, %21
  %36 = phi i64 [ %20, %18 ], [ %32, %21 ]
  %37 = phi i32 [ %14, %18 ], [ %34, %21 ]
  %38 = getelementptr inbounds i32, ptr %7, i64 %36
  %39 = add i32 %16, 2
  %40 = icmp ult i32 %39, %37
  br i1 %40, label %41, label %70, !prof !101

41:                                               ; preds = %35
  %42 = load i32, ptr %38, align 4, !tbaa !65
  br label %43

43:                                               ; preds = %41, %64
  %44 = phi i32 [ %65, %64 ], [ %37, %41 ]
  %45 = phi i32 [ %66, %64 ], [ %37, %41 ]
  %46 = phi i32 [ %68, %64 ], [ %39, %41 ]
  %47 = phi i32 [ %46, %64 ], [ %16, %41 ]
  %48 = phi i32 [ %67, %64 ], [ %42, %41 ]
  %49 = zext i32 %46 to i64
  %50 = getelementptr inbounds i32, ptr %7, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !65
  %52 = add nsw i32 %48, 1
  %53 = icmp slt i32 %52, %51
  br i1 %53, label %70, label %54, !prof !102

54:                                               ; preds = %43
  %55 = add i32 %47, 3
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %7, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = icmp eq i32 %52, %51
  %60 = icmp slt i32 %48, %58
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %64, !prof !103

62:                                               ; preds = %54
  store i32 %58, ptr %38, align 4, !tbaa !65
  %63 = load i32, ptr %10, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %62, %54
  %65 = phi i32 [ %63, %62 ], [ %44, %54 ]
  %66 = phi i32 [ %63, %62 ], [ %45, %54 ]
  %67 = phi i32 [ %58, %62 ], [ %48, %54 ]
  %68 = add i32 %46, 2
  %69 = icmp ult i32 %68, %66
  br i1 %69, label %43, label %70, !prof !104

70:                                               ; preds = %64, %43, %35
  %71 = phi i32 [ %37, %35 ], [ %44, %43 ], [ %65, %64 ]
  %72 = phi i32 [ %39, %35 ], [ %46, %43 ], [ %68, %64 ]
  %73 = add i32 %15, 2
  %74 = icmp ult i32 %72, %71
  br i1 %74, label %13, label %75, !prof !105, !llvm.loop !106

75:                                               ; preds = %70
  store i32 %73, ptr %10, align 8, !tbaa !58
  store i8 1, ptr %2, align 1, !tbaa !56
  br label %76

76:                                               ; preds = %1, %5, %9, %75
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken11mergeRangesEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %5 = icmp eq i16 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 284, ptr noundef %9) #8
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %173, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %18, align 8, !tbaa !64
  %19 = load ptr, ptr %0, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 14
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %22 = load ptr, ptr %1, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 14
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(72) %1) #8
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %17
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !59
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 %30, ptr %31, align 4, !tbaa !59
  %32 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = zext i32 %30 to i64
  %35 = shl nuw nsw i64 %34, 2
  %36 = load ptr, ptr %33, align 8, !tbaa !45
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef %35) #8
  store ptr %39, ptr %25, align 8, !tbaa !62
  %40 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = load ptr, ptr %14, align 8, !tbaa !62
  br label %49

45:                                               ; preds = %49, %28
  %46 = phi i32 [ 0, %28 ], [ %55, %49 ]
  %47 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 %46, ptr %47, align 8, !tbaa !58
  %48 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 1, ptr %48, align 8, !tbaa !48
  br label %173

49:                                               ; preds = %43, %49
  %50 = phi i64 [ 0, %43 ], [ %54, %49 ]
  %51 = getelementptr inbounds i32, ptr %44, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !65
  %53 = getelementptr inbounds i32, ptr %39, i64 %50
  store i32 %52, ptr %53, align 4, !tbaa !65
  %54 = add nuw nsw i64 %50, 1
  %55 = load i32, ptr %40, align 8, !tbaa !58
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %49, label %45, !llvm.loop !107

58:                                               ; preds = %17
  %59 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !58
  %61 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !58
  %63 = add i32 %62, %60
  %64 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !59
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = add i32 %69, %65
  br label %71

71:                                               ; preds = %58, %67
  %72 = phi i32 [ %70, %67 ], [ %65, %58 ]
  %73 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !60
  %75 = zext i32 %72 to i64
  %76 = shl nuw nsw i64 %75, 2
  %77 = load ptr, ptr %74, align 8, !tbaa !45
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %74, i64 noundef %76) #8
  %81 = load ptr, ptr %25, align 8
  br label %82

82:                                               ; preds = %169, %71
  %83 = phi i32 [ 0, %71 ], [ %170, %169 ]
  %84 = phi i32 [ 0, %71 ], [ %171, %169 ]
  %85 = phi i32 [ 0, %71 ], [ %172, %169 ]
  %86 = load i32, ptr %59, align 8, !tbaa !58
  %87 = icmp ult i32 %83, %86
  %88 = load i32, ptr %61, align 8, !tbaa !58
  %89 = icmp ult i32 %84, %88
  br i1 %87, label %112, label %90

90:                                               ; preds = %82
  br i1 %89, label %91, label %93

91:                                               ; preds = %90
  %92 = load ptr, ptr %14, align 8, !tbaa !62
  br label %101

93:                                               ; preds = %90
  %94 = load ptr, ptr %73, align 8, !tbaa !60
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %81) #8
  %98 = load i32, ptr %61, align 8, !tbaa !58
  %99 = load i32, ptr %59, align 8, !tbaa !58
  %100 = add i32 %99, %98
  store i32 %100, ptr %59, align 8, !tbaa !58
  store ptr %80, ptr %25, align 8, !tbaa !62
  store i32 %72, ptr %64, align 4, !tbaa !59
  br label %173

101:                                              ; preds = %91, %101
  %102 = phi i1 [ true, %91 ], [ false, %101 ]
  %103 = phi i32 [ %85, %91 ], [ %109, %101 ]
  %104 = phi i32 [ %84, %91 ], [ %105, %101 ]
  %105 = add i32 %104, 1
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i32, ptr %92, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !65
  %109 = add i32 %103, 1
  %110 = zext i32 %103 to i64
  %111 = getelementptr inbounds i32, ptr %80, i64 %110
  store i32 %108, ptr %111, align 4, !tbaa !65
  br i1 %102, label %101, label %169, !llvm.loop !108

112:                                              ; preds = %82
  br i1 %89, label %124, label %113

113:                                              ; preds = %112, %113
  %114 = phi i1 [ false, %113 ], [ true, %112 ]
  %115 = phi i32 [ %121, %113 ], [ %85, %112 ]
  %116 = phi i32 [ %117, %113 ], [ %83, %112 ]
  %117 = add i32 %116, 1
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i32, ptr %81, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !65
  %121 = add i32 %115, 1
  %122 = zext i32 %115 to i64
  %123 = getelementptr inbounds i32, ptr %80, i64 %122
  store i32 %120, ptr %123, align 4, !tbaa !65
  br i1 %114, label %113, label %169, !llvm.loop !109

124:                                              ; preds = %112
  %125 = load ptr, ptr %14, align 8, !tbaa !62
  %126 = zext i32 %84 to i64
  %127 = getelementptr inbounds i32, ptr %125, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !65
  %129 = zext i32 %83 to i64
  %130 = getelementptr inbounds i32, ptr %81, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !65
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %146, label %133

133:                                              ; preds = %124
  %134 = icmp eq i32 %128, %131
  br i1 %134, label %136, label %135

135:                                              ; preds = %136, %133
  br label %158

136:                                              ; preds = %133
  %137 = add nuw i32 %84, 1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %125, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !65
  %141 = add nuw i32 %83, 1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %81, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !65
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %135

146:                                              ; preds = %136, %124
  br label %147

147:                                              ; preds = %146, %147
  %148 = phi i1 [ false, %147 ], [ true, %146 ]
  %149 = phi i32 [ %155, %147 ], [ %85, %146 ]
  %150 = phi i32 [ %151, %147 ], [ %84, %146 ]
  %151 = add i32 %150, 1
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i32, ptr %125, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !65
  %155 = add i32 %149, 1
  %156 = zext i32 %149 to i64
  %157 = getelementptr inbounds i32, ptr %80, i64 %156
  store i32 %154, ptr %157, align 4, !tbaa !65
  br i1 %148, label %147, label %169, !llvm.loop !110

158:                                              ; preds = %135, %158
  %159 = phi i1 [ false, %158 ], [ true, %135 ]
  %160 = phi i32 [ %166, %158 ], [ %85, %135 ]
  %161 = phi i32 [ %162, %158 ], [ %83, %135 ]
  %162 = add i32 %161, 1
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, ptr %81, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !65
  %166 = add i32 %160, 1
  %167 = zext i32 %160 to i64
  %168 = getelementptr inbounds i32, ptr %80, i64 %167
  store i32 %165, ptr %168, align 4, !tbaa !65
  br i1 %159, label %158, label %169, !llvm.loop !111

169:                                              ; preds = %101, %113, %158, %147
  %170 = phi i32 [ %83, %147 ], [ %162, %158 ], [ %117, %113 ], [ %83, %101 ]
  %171 = phi i32 [ %151, %147 ], [ %84, %158 ], [ %84, %113 ], [ %105, %101 ]
  %172 = phi i32 [ %155, %147 ], [ %166, %158 ], [ %121, %113 ], [ %109, %101 ]
  br label %82, !llvm.loop !112

173:                                              ; preds = %13, %93, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken14subtractRangesEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %155, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %155, label %10

10:                                               ; preds = %6
  %11 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %12 = icmp eq i16 %11, 5
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 17
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1) #8
  br label %155

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %18, align 8, !tbaa !64
  %19 = load ptr, ptr %0, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 14
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 15
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %25 = load ptr, ptr %1, align 8, !tbaa !45
  %26 = getelementptr inbounds ptr, ptr %25, i64 14
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %1) #8
  %28 = load ptr, ptr %1, align 8, !tbaa !45
  %29 = getelementptr inbounds ptr, ptr %28, i64 15
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %1) #8
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !58
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !58
  %35 = add i32 %34, %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %17
  %40 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !59
  %42 = add i32 %41, %37
  br label %43

43:                                               ; preds = %17, %39
  %44 = phi i32 [ %42, %39 ], [ %37, %17 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = zext i32 %44 to i64
  %48 = shl nuw nsw i64 %47, 2
  %49 = load ptr, ptr %46, align 8, !tbaa !45
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef %48) #8
  %53 = load i32, ptr %31, align 8, !tbaa !58
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %3, align 8
  br i1 %54, label %149, label %56

56:                                               ; preds = %43
  %57 = load i32, ptr %33, align 8, !tbaa !58
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %125, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %7, align 8, !tbaa !62
  br label %64

61:                                               ; preds = %119
  %62 = load i32, ptr %33, align 8, !tbaa !58
  %63 = icmp ult i32 %120, %62
  br i1 %63, label %64, label %125, !llvm.loop !113

64:                                               ; preds = %59, %61
  %65 = phi i32 [ %120, %61 ], [ 0, %59 ]
  %66 = phi i32 [ %121, %61 ], [ 0, %59 ]
  %67 = phi i32 [ %122, %61 ], [ 0, %59 ]
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, ptr %55, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !65
  %71 = add nuw i32 %66, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %55, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !65
  %75 = zext i32 %65 to i64
  %76 = getelementptr inbounds i32, ptr %60, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !65
  %78 = add nuw i32 %65, 1
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %60, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !65
  %82 = icmp slt i32 %74, %77
  br i1 %82, label %83, label %92

83:                                               ; preds = %64
  %84 = add i32 %67, 1
  %85 = zext i32 %67 to i64
  %86 = getelementptr inbounds i32, ptr %52, i64 %85
  store i32 %70, ptr %86, align 4, !tbaa !65
  %87 = add i32 %66, 2
  %88 = load i32, ptr %73, align 4, !tbaa !65
  %89 = add i32 %67, 2
  %90 = zext i32 %84 to i64
  %91 = getelementptr inbounds i32, ptr %52, i64 %90
  store i32 %88, ptr %91, align 4, !tbaa !65
  br label %119

92:                                               ; preds = %64
  %93 = icmp sgt i32 %70, %81
  br i1 %93, label %117, label %94

94:                                               ; preds = %92
  %95 = icmp sgt i32 %77, %70
  %96 = icmp sgt i32 %74, %81
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = add i32 %66, 2
  br label %119

100:                                              ; preds = %94
  br i1 %95, label %104, label %101

101:                                              ; preds = %100
  %102 = add nsw i32 %81, 1
  store i32 %102, ptr %69, align 4, !tbaa !65
  %103 = add i32 %65, 2
  br label %119

104:                                              ; preds = %100
  %105 = add i32 %67, 1
  %106 = zext i32 %67 to i64
  %107 = getelementptr inbounds i32, ptr %52, i64 %106
  store i32 %70, ptr %107, align 4, !tbaa !65
  %108 = add nsw i32 %77, -1
  %109 = add i32 %67, 2
  %110 = zext i32 %105 to i64
  %111 = getelementptr inbounds i32, ptr %52, i64 %110
  store i32 %108, ptr %111, align 4, !tbaa !65
  br i1 %96, label %114, label %112

112:                                              ; preds = %104
  %113 = add i32 %66, 2
  br label %119

114:                                              ; preds = %104
  %115 = add nsw i32 %81, 1
  store i32 %115, ptr %69, align 4, !tbaa !65
  %116 = add i32 %65, 2
  br label %119

117:                                              ; preds = %92
  %118 = add i32 %65, 2
  br label %119

119:                                              ; preds = %117, %101, %114, %112, %98, %83
  %120 = phi i32 [ %65, %83 ], [ %65, %98 ], [ %103, %101 ], [ %65, %112 ], [ %116, %114 ], [ %118, %117 ]
  %121 = phi i32 [ %87, %83 ], [ %99, %98 ], [ %66, %101 ], [ %113, %112 ], [ %66, %114 ], [ %66, %117 ]
  %122 = phi i32 [ %89, %83 ], [ %67, %98 ], [ %67, %101 ], [ %109, %112 ], [ %109, %114 ], [ %67, %117 ]
  %123 = load i32, ptr %31, align 8, !tbaa !58
  %124 = icmp ult i32 %121, %123
  br i1 %124, label %61, label %125, !llvm.loop !113

125:                                              ; preds = %119, %61, %56
  %126 = phi i32 [ %53, %56 ], [ %123, %61 ], [ %123, %119 ]
  %127 = phi i32 [ 0, %56 ], [ %121, %61 ], [ %121, %119 ]
  %128 = phi i32 [ 0, %56 ], [ %122, %61 ], [ %122, %119 ]
  %129 = icmp ult i32 %127, %126
  br i1 %129, label %130, label %149

130:                                              ; preds = %125, %130
  %131 = phi i32 [ %144, %130 ], [ %128, %125 ]
  %132 = phi i32 [ %140, %130 ], [ %127, %125 ]
  %133 = add nuw i32 %132, 1
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds i32, ptr %55, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !65
  %137 = add i32 %131, 1
  %138 = zext i32 %131 to i64
  %139 = getelementptr inbounds i32, ptr %52, i64 %138
  store i32 %136, ptr %139, align 4, !tbaa !65
  %140 = add i32 %132, 2
  %141 = zext i32 %133 to i64
  %142 = getelementptr inbounds i32, ptr %55, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !65
  %144 = add i32 %131, 2
  %145 = zext i32 %137 to i64
  %146 = getelementptr inbounds i32, ptr %52, i64 %145
  store i32 %143, ptr %146, align 4, !tbaa !65
  %147 = load i32, ptr %31, align 8, !tbaa !58
  %148 = icmp ult i32 %140, %147
  br i1 %148, label %130, label %149, !llvm.loop !114

149:                                              ; preds = %130, %43, %125
  %150 = phi i32 [ %128, %125 ], [ 0, %43 ], [ %144, %130 ]
  %151 = load ptr, ptr %45, align 8, !tbaa !60
  %152 = load ptr, ptr %151, align 8, !tbaa !45
  %153 = getelementptr inbounds ptr, ptr %152, i64 3
  %154 = load ptr, ptr %153, align 8
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef %55) #8
  store ptr %52, ptr %3, align 8, !tbaa !62
  store i32 %150, ptr %31, align 8, !tbaa !58
  store i32 %44, ptr %36, align 4, !tbaa !59
  br label %155

155:                                              ; preds = %2, %6, %149, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken15intersectRangesEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %128, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %128, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %11, align 8, !tbaa !64
  %12 = load ptr, ptr %0, align 8, !tbaa !45
  %13 = getelementptr inbounds ptr, ptr %12, i64 14
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 15
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %18 = load ptr, ptr %1, align 8, !tbaa !45
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %1) #8
  %21 = load ptr, ptr %1, align 8, !tbaa !45
  %22 = getelementptr inbounds ptr, ptr %21, i64 15
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %1) #8
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !59
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %10
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !59
  %35 = add i32 %34, %30
  br label %36

36:                                               ; preds = %10, %32
  %37 = phi i32 [ %35, %32 ], [ %30, %10 ]
  %38 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = zext i32 %37 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = load ptr, ptr %39, align 8, !tbaa !45
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %41) #8
  %46 = load i32, ptr %24, align 8, !tbaa !58
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %3, align 8
  br i1 %47, label %122, label %49

49:                                               ; preds = %36, %116
  %50 = phi i32 [ %119, %116 ], [ 0, %36 ]
  %51 = phi i32 [ %118, %116 ], [ 0, %36 ]
  %52 = phi i32 [ %117, %116 ], [ 0, %36 ]
  %53 = load i32, ptr %26, align 8, !tbaa !58
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %49
  %56 = zext i32 %51 to i64
  %57 = getelementptr inbounds i32, ptr %48, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = add nuw i32 %51, 1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %48, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !65
  %63 = load ptr, ptr %7, align 8, !tbaa !62
  %64 = zext i32 %52 to i64
  %65 = getelementptr inbounds i32, ptr %63, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !65
  %67 = add nuw i32 %52, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, ptr %63, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !65
  %71 = icmp slt i32 %62, %66
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = add i32 %51, 2
  br label %116

74:                                               ; preds = %55
  %75 = icmp sgt i32 %58, %70
  br i1 %75, label %111, label %76

76:                                               ; preds = %74
  %77 = icmp sgt i32 %66, %58
  %78 = icmp sgt i32 %62, %70
  %79 = select i1 %77, i1 true, i1 %78
  %80 = add i32 %50, 1
  %81 = zext i32 %50 to i64
  %82 = getelementptr inbounds i32, ptr %45, i64 %81
  br i1 %79, label %88, label %83

83:                                               ; preds = %76
  store i32 %58, ptr %82, align 4, !tbaa !65
  %84 = add i32 %50, 2
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds i32, ptr %45, i64 %85
  store i32 %62, ptr %86, align 4, !tbaa !65
  %87 = add i32 %51, 2
  br label %116

88:                                               ; preds = %76
  %89 = add i32 %50, 2
  %90 = zext i32 %80 to i64
  %91 = getelementptr inbounds i32, ptr %45, i64 %90
  br i1 %77, label %100, label %92

92:                                               ; preds = %88
  store i32 %58, ptr %82, align 4, !tbaa !65
  store i32 %70, ptr %91, align 4, !tbaa !65
  %93 = add i32 %52, 2
  %94 = load i32, ptr %26, align 8, !tbaa !58
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = add nsw i32 %70, 1
  store i32 %97, ptr %57, align 4, !tbaa !65
  br label %116

98:                                               ; preds = %92
  %99 = add i32 %51, 2
  br label %116

100:                                              ; preds = %88
  store i32 %66, ptr %82, align 4, !tbaa !65
  br i1 %78, label %103, label %101

101:                                              ; preds = %100
  store i32 %62, ptr %91, align 4, !tbaa !65
  %102 = add i32 %51, 2
  br label %116

103:                                              ; preds = %100
  store i32 %70, ptr %91, align 4, !tbaa !65
  %104 = add i32 %52, 2
  %105 = load i32, ptr %26, align 8, !tbaa !58
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = add nsw i32 %70, 1
  store i32 %108, ptr %57, align 4, !tbaa !65
  br label %116

109:                                              ; preds = %103
  %110 = add i32 %51, 2
  br label %116

111:                                              ; preds = %74
  %112 = add i32 %52, 2
  %113 = icmp ult i32 %112, %53
  %114 = add i32 %51, 2
  %115 = select i1 %113, i32 %51, i32 %114
  br label %116

116:                                              ; preds = %111, %98, %96, %107, %109, %101, %83, %72
  %117 = phi i32 [ %52, %72 ], [ %52, %83 ], [ %93, %96 ], [ %93, %98 ], [ %52, %101 ], [ %104, %107 ], [ %104, %109 ], [ %112, %111 ]
  %118 = phi i32 [ %73, %72 ], [ %87, %83 ], [ %51, %96 ], [ %99, %98 ], [ %102, %101 ], [ %51, %107 ], [ %110, %109 ], [ %115, %111 ]
  %119 = phi i32 [ %50, %72 ], [ %84, %83 ], [ %89, %96 ], [ %89, %98 ], [ %89, %101 ], [ %89, %107 ], [ %89, %109 ], [ %50, %111 ]
  %120 = load i32, ptr %24, align 8, !tbaa !58
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %49, label %122, !llvm.loop !115

122:                                              ; preds = %49, %116, %36
  %123 = phi i32 [ 0, %36 ], [ %119, %116 ], [ %50, %49 ]
  %124 = load ptr, ptr %38, align 8, !tbaa !60
  %125 = load ptr, ptr %124, align 8, !tbaa !45
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %48) #8
  store ptr %45, ptr %3, align 8, !tbaa !62
  store i32 %123, ptr %24, align 8, !tbaa !58
  store i32 %37, ptr %29, align 4, !tbaa !59
  br label %128

128:                                              ; preds = %2, %6, %122
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %4 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %14, label %6, !prof !74

6:                                                ; preds = %3
  %7 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 539, i32 noundef 287, ptr noundef %2) #8
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #11
  resume { ptr, i32 } %13

14:                                               ; preds = %6, %3
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 14
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = getelementptr inbounds ptr, ptr %18, i64 15
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !58
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %22, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !65
  %29 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext false) #8
  %30 = load ptr, ptr %21, align 8, !tbaa !62
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38, !prof !74

33:                                               ; preds = %14
  %34 = add nsw i32 %31, -1
  %35 = load ptr, ptr %29, align 8, !tbaa !45
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(72) %29, i32 noundef 0, i32 noundef %34) #8
  br label %38

38:                                               ; preds = %33, %14
  %39 = load i32, ptr %23, align 8, !tbaa !58
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %45, !prof !116

42:                                               ; preds = %45, %38
  %43 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !65
  %44 = icmp eq i32 %28, %43
  br i1 %44, label %69, label %64, !prof !89

45:                                               ; preds = %38, %45
  %46 = phi i32 [ %60, %45 ], [ 1, %38 ]
  %47 = load ptr, ptr %21, align 8, !tbaa !62
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i32, ptr %47, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !65
  %51 = add nsw i32 %50, 1
  %52 = add nuw i32 %46, 1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, ptr %47, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !65
  %56 = add nsw i32 %55, -1
  %57 = load ptr, ptr %29, align 8, !tbaa !45
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(72) %29, i32 noundef %51, i32 noundef %56) #8
  %60 = add i32 %46, 2
  %61 = load i32, ptr %23, align 8, !tbaa !58
  %62 = add i32 %61, -2
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %45, label %42, !prof !117, !llvm.loop !118

64:                                               ; preds = %42
  %65 = add nsw i32 %28, 1
  %66 = load ptr, ptr %29, align 8, !tbaa !45
  %67 = getelementptr inbounds ptr, ptr %66, i64 12
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(72) %29, i32 noundef %65, i32 noundef %43) #8
  br label %69

69:                                               ; preds = %64, %42
  %70 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %29, i64 0, i32 2
  store i8 1, ptr %70, align 1, !tbaa !56
  ret ptr %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_710RangeToken9createMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %3 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = icmp eq i16 %3, 4
  %5 = icmp slt i32 %1, 256
  br i1 %4, label %6, label %42, !prof !120

6:                                                ; preds = %2
  br i1 %5, label %7, label %18, !prof !120

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = sdiv i32 %1, 32
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !65
  %14 = and i32 %1, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br label %78

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !57
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  br label %27

27:                                               ; preds = %24, %39
  %28 = phi i32 [ %20, %24 ], [ %40, %39 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = icmp sgt i32 %31, %1
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = add nuw i32 %28, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %26, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = icmp slt i32 %37, %1
  br i1 %38, label %39, label %78

39:                                               ; preds = %27, %33
  %40 = add i32 %28, 2
  %41 = icmp ult i32 %40, %22
  br i1 %41, label %27, label %78, !llvm.loop !121

42:                                               ; preds = %2
  br i1 %5, label %43, label %54

43:                                               ; preds = %42
  %44 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = sdiv i32 %1, 32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !65
  %50 = and i32 %1, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 0
  br label %78

54:                                               ; preds = %42
  %55 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !57
  %57 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !58
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  br label %63

63:                                               ; preds = %60, %75
  %64 = phi i32 [ %56, %60 ], [ %76, %75 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %62, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !65
  %68 = icmp sgt i32 %67, %1
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = add nuw i32 %64, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %62, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !65
  %74 = icmp slt i32 %73, %1
  br i1 %74, label %75, label %78

75:                                               ; preds = %63, %69
  %76 = add i32 %64, 2
  %77 = icmp ult i32 %76, %58
  br i1 %77, label %63, label %78, !llvm.loop !122

78:                                               ; preds = %69, %75, %33, %39, %18, %54, %43, %7
  %79 = phi i1 [ %17, %7 ], [ %53, %43 ], [ true, %54 ], [ false, %18 ], [ true, %33 ], [ false, %39 ], [ false, %69 ], [ true, %75 ]
  ret i1 %79
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !61
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  store i32 %10, ptr %11, align 4, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !65
  %12 = load i32, ptr %9, align 8, !tbaa !58
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14, !prof !124

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i32 [ 0, %14 ], [ %45, %44 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = or disjoint i32 %18, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %16, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = icmp slt i32 %21, 256
  br i1 %26, label %27, label %48, !prof !125

27:                                               ; preds = %17
  %28 = icmp sgt i32 %21, %25
  br i1 %28, label %44, label %29, !prof !126

29:                                               ; preds = %27
  %30 = tail call i32 @llvm.smin.i32(i32 %25, i32 255)
  br label %33

31:                                               ; preds = %33
  %32 = icmp sgt i32 %25, 255
  br i1 %32, label %48, label %44, !prof !127

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %42, %33 ], [ %21, %29 ]
  %35 = and i32 %34, 31
  %36 = shl nuw i32 1, %35
  %37 = sdiv i32 %34, 32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %7, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !65
  %41 = or i32 %40, %36
  store i32 %41, ptr %39, align 4, !tbaa !65
  %42 = add nsw i32 %34, 1
  %43 = icmp slt i32 %34, %30
  br i1 %43, label %33, label %31, !prof !128, !llvm.loop !129

44:                                               ; preds = %27, %31
  %45 = add i32 %18, 2
  %46 = load i32, ptr %9, align 8, !tbaa !58
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %17, label %49, !prof !130, !llvm.loop !131

48:                                               ; preds = %31, %17
  store i32 %18, ptr %11, align 4, !tbaa !57
  br label %49

49:                                               ; preds = %44, %48, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token8getChildEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !132 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMinEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token14getReferenceNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token9getStringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token7getCharEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMinEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 294, ptr noundef %6) #8
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #11
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!43}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xercesc_2_710RangeTokenC2EtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE, i64 18}
!36 = !{ptr @_ZN11xercesc_2_710RangeTokenD2Ev, ptr @_ZN11xercesc_2_75TokenD2Ev, i64 18}
!37 = !{ptr @_ZN11xercesc_2_710RangeToken9createMapEv, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 18}
!38 = !{ptr @_ZN11xercesc_2_710RangeToken8addRangeEii, ptr @_ZN11xercesc_2_710RangeToken6expandEj, i64 65}
!39 = !{ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_75Token12getTokenTypeEv, i64 6}
!40 = !{ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb, i64 5}
!41 = !{ptr @_ZN11xercesc_2_710RangeToken5matchEi, ptr @_ZN11xercesc_2_710RangeToken9createMapEv, i64 1301032}
!42 = !{ptr @_ZN11xercesc_2_710RangeToken5matchEi, ptr @_ZNK11xercesc_2_75Token12getTokenTypeEv, i64 1301032}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 18}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !54, i64 24}
!49 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !50, i64 0, !54, i64 24, !54, i64 25, !55, i64 28, !55, i64 32, !55, i64 36, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64}
!50 = !{!"_ZTSN11xercesc_2_75TokenE", !51, i64 8, !53, i64 16}
!51 = !{!"short", !52, i64 0}
!52 = !{!"omnipotent char", !47, i64 0}
!53 = !{!"any pointer", !52, i64 0}
!54 = !{!"bool", !52, i64 0}
!55 = !{!"int", !52, i64 0}
!56 = !{!49, !54, i64 25}
!57 = !{!49, !55, i64 28}
!58 = !{!49, !55, i64 32}
!59 = !{!49, !55, i64 36}
!60 = !{!49, !53, i64 64}
!61 = !{!49, !53, i64 40}
!62 = !{!49, !53, i64 48}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!49, !53, i64 56}
!65 = !{!55, !55, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = !{!"function_entry_count", i64 1301478}
!70 = !{!50, !51, i64 8}
!71 = !{!"function_entry_count", i64 1301042}
!72 = !{!"branch_weights", i32 18, i32 1301026}
!73 = !{!"function_entry_count", i64 5}
!74 = !{!"branch_weights", i32 6, i32 1}
!75 = !{!"function_entry_count", i64 745}
!76 = !{!"branch_weights", i32 14, i32 733}
!77 = !{!"branch_weights", i32 3, i32 731}
!78 = !{!"branch_weights", i32 667, i32 65}
!79 = !{!"branch_weights", i32 731, i32 1}
!80 = !{i8 0, i8 2}
!81 = !{!"branch_weights", i32 1, i32 731}
!82 = !{!"function_entry_count", i64 64}
!83 = !{!"branch_weights", i32 1, i32 129}
!84 = !{!"branch_weights", i32 12953, i32 129}
!85 = distinct !{!85, !67}
!86 = !{!"function_entry_count", i64 16}
!87 = !{}
!88 = !{!"branch_weights", i32 6, i32 12}
!89 = !{!"branch_weights", i32 1, i32 6}
!90 = !{!"branch_weights", i32 191, i32 1}
!91 = !{!"branch_weights", i32 24513, i32 191}
!92 = distinct !{!92, !67}
!93 = !{!"branch_weights", i32 27745, i32 72064}
!94 = !{!"branch_weights", i32 1, i32 72064}
!95 = !{!"branch_weights", i32 772, i32 99036}
!96 = distinct !{!96, !67}
!97 = !{!"branch_weights", i32 14, i32 4}
!98 = !{!"branch_weights", i32 1, i32 14}
!99 = !{!"branch_weights", i32 8, i32 7}
!100 = !{!"branch_weights", i32 33, i32 700}
!101 = !{!"branch_weights", i32 223, i32 1}
!102 = !{!"branch_weights", i32 726, i32 48}
!103 = !{!"branch_weights", i32 97, i32 1}
!104 = !{!"branch_weights", i32 24513, i32 223}
!105 = !{!"branch_weights", i32 23201, i32 223}
!106 = distinct !{!106, !67}
!107 = distinct !{!107, !67}
!108 = distinct !{!108, !67}
!109 = distinct !{!109, !67}
!110 = distinct !{!110, !67}
!111 = distinct !{!111, !67}
!112 = distinct !{!112, !67}
!113 = distinct !{!113, !67}
!114 = distinct !{!114, !67}
!115 = distinct !{!115, !67}
!116 = !{!"branch_weights", i32 1, i32 191}
!117 = !{!"branch_weights", i32 23009, i32 191}
!118 = distinct !{!118, !67}
!119 = !{!"function_entry_count", i64 1301032}
!120 = !{!"branch_weights", i32 1301033, i32 1}
!121 = distinct !{!121, !67}
!122 = distinct !{!122, !67}
!123 = !{!"function_entry_count", i64 17}
!124 = !{!"branch_weights", i32 1, i32 143}
!125 = !{!"branch_weights", i32 64, i32 5}
!126 = !{!"branch_weights", i32 1, i32 127}
!127 = !{!"branch_weights", i32 199790121, i32 1947693527}
!128 = !{!"branch_weights", i32 2525, i32 127}
!129 = distinct !{!129, !67}
!130 = !{!"branch_weights", i32 945, i32 143}
!131 = distinct !{!131, !67}
!132 = !{!"function_entry_count", i64 79}
!133 = !{!50, !53, i64 16}
!134 = !{!135, !53, i64 40}
!135 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !136, i64 8, !53, i64 16, !55, i64 24, !53, i64 32, !53, i64 40}
!136 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !52, i64 0}
