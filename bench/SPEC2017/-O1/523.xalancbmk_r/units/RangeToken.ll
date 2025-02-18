; ModuleID = 'RangeToken.cpp'
source_filename = "RangeToken.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::RangeToken" = type { %"class.xercesc_2_7::Token", i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

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

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeTokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710RangeTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !58
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 16, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %2, ptr %10, align 8, !tbaa !62
  ret void
}

declare void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710RangeTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_710RangeTokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %17, !prof !64

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !62
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = load ptr, ptr %10, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !64

16:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !66 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75TokenD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710RangeTokenD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_710RangeTokenD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %70

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !68
  %11 = icmp eq i16 %10, 5
  %12 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !60
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  br label %30

18:                                               ; preds = %41, %8
  %19 = load ptr, ptr %12, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull %0)
  %22 = load ptr, ptr %12, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 15
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(72) %12)
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %12, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %12)
  br label %29

29:                                               ; preds = %18, %28
  store ptr %12, ptr %3, align 8, !tbaa !67
  br label %70

30:                                               ; preds = %16, %41
  %31 = phi i32 [ 0, %16 ], [ %42, %41 ]
  %32 = load ptr, ptr %17, align 8, !tbaa !65
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !69
  %36 = or disjoint i32 %31, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %32, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !69
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %63, %30
  %42 = add i32 %31, 2
  %43 = load i32, ptr %13, align 8, !tbaa !60
  %44 = add i32 %43, -1
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %30, label %18, !llvm.loop !70

46:                                               ; preds = %30, %63
  %47 = phi i32 [ %65, %63 ], [ %35, %30 ]
  %48 = add i32 %47, -65
  %49 = icmp ult i32 %48, 26
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = or disjoint i32 %47, 32
  %52 = load ptr, ptr %12, align 8, !tbaa !47
  %53 = getelementptr inbounds ptr, ptr %52, i64 12
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %51, i32 noundef %51)
  br label %63

55:                                               ; preds = %46
  %56 = add i32 %47, -97
  %57 = icmp ult i32 %56, 26
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = add nsw i32 %47, -32
  %60 = load ptr, ptr %12, align 8, !tbaa !47
  %61 = getelementptr inbounds ptr, ptr %60, i64 12
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %59, i32 noundef %59)
  br label %63

63:                                               ; preds = %50, %58, %55
  %64 = phi i32 [ %51, %50 ], [ %59, %58 ], [ %47, %55 ]
  %65 = add nsw i32 %64, 1
  %66 = load ptr, ptr %17, align 8, !tbaa !65
  %67 = getelementptr inbounds i32, ptr %66, i64 %37
  %68 = load i32, ptr %67, align 4, !tbaa !69
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %46, label %41, !llvm.loop !73

70:                                               ; preds = %29, %2
  %71 = load ptr, ptr %3, align 8, !tbaa !67
  ret ptr %71
}

declare noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken14setRangeValuesEPij(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !74 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !75

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %9)
  store ptr null, ptr %8, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = load ptr, ptr %4, align 8, !tbaa !65
  %22 = load ptr, ptr %20, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %21)
  store ptr null, ptr %4, align 8, !tbaa !65
  br label %25

25:                                               ; preds = %17, %3
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 %2, ptr %26, align 4, !tbaa !61
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 %2, ptr %27, align 8, !tbaa !60
  store ptr %1, ptr %4, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken8addRangeEii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 !prof !76 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !67
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %6 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24, !prof !77

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = load ptr, ptr %12, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %16), !prof !78
  store ptr %20, ptr %7, align 8, !tbaa !65
  store i32 %5, ptr %20, align 4, !tbaa !69
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %6, ptr %21, align 4, !tbaa !69
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 2, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 1, ptr %23, align 8, !tbaa !50
  br label %65

24:                                               ; preds = %3
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !60
  %27 = add i32 %26, -1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %8, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !69
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %33, label %34, !prof !79

33:                                               ; preds = %24
  store i32 %6, ptr %29, align 4, !tbaa !69
  br label %65

34:                                               ; preds = %24
  %35 = add i32 %26, 2
  %36 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %40, label %39, !prof !80

39:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_710RangeToken6expandEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  br label %40

40:                                               ; preds = %39, %34
  %41 = load ptr, ptr %7, align 8, !tbaa !65
  %42 = load i32, ptr %25, align 8, !tbaa !60
  %43 = add i32 %42, -1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %41, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !69
  %47 = icmp slt i32 %46, %5
  br i1 %47, label %50, label %48, !prof !81

48:                                               ; preds = %40
  %49 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 0, ptr %49, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %48, %40
  %51 = add i32 %42, 1
  store i32 %51, ptr %25, align 8, !tbaa !60
  %52 = zext i32 %42 to i64
  %53 = getelementptr inbounds i32, ptr %41, i64 %52
  store i32 %5, ptr %53, align 4, !tbaa !69
  %54 = load i32, ptr %25, align 8, !tbaa !60
  %55 = add i32 %54, 1
  store i32 %55, ptr %25, align 8, !tbaa !60
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i32, ptr %41, i64 %56
  store i32 %6, ptr %57, align 4, !tbaa !69
  %58 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  %59 = load i8, ptr %58, align 8, !tbaa !50, !range !82, !noundef !83
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65, !prof !84

61:                                               ; preds = %50
  %62 = load ptr, ptr %0, align 8, !tbaa !47
  %63 = getelementptr inbounds ptr, ptr %62, i64 14
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %65

65:                                               ; preds = %10, %61, %50, %33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken6expandEj(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = add i32 %4, %1
  %6 = uitofp i32 %4 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %5, i32 %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = load ptr, ptr %11, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %13), !prof !86
  %18 = load i32, ptr %3, align 8, !tbaa !60
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !87

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  br label %31

23:                                               ; preds = %31, %2
  %24 = load ptr, ptr %10, align 8, !tbaa !62
  %25 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = load ptr, ptr %24, align 8, !tbaa !47
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %26), !prof !88
  store ptr %17, ptr %25, align 8, !tbaa !65
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 %9, ptr %30, align 4, !tbaa !61
  ret void

31:                                               ; preds = %20, %31
  %32 = phi i64 [ 0, %20 ], [ %36, %31 ]
  %33 = getelementptr inbounds i32, ptr %22, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = getelementptr inbounds i32, ptr %17, i64 %32
  store i32 %34, ptr %35, align 4, !tbaa !69
  %36 = add nuw nsw i64 %32, 1
  %37 = load i32, ptr %3, align 8, !tbaa !60
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %31, label %23, !prof !89, !llvm.loop !90
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken10sortRangesEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !50, !range !82, !noundef !83
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %47, !prof !92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9, !prof !93

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = add i32 %11, -4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %18, !prof !94

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %19
  %17 = phi i64 [ %15, %14 ], [ %20, %19 ]
  br label %22

18:                                               ; preds = %19, %9
  store i8 1, ptr %2, align 8, !tbaa !50
  br label %47

19:                                               ; preds = %45
  %20 = add nsw i64 %17, -2
  %21 = icmp sgt i64 %17, 1
  br i1 %21, label %16, label %18, !prof !95, !llvm.loop !96

22:                                               ; preds = %16, %45
  %23 = phi i64 [ 0, %16 ], [ %26, %45 ]
  %24 = getelementptr inbounds i32, ptr %7, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = add nuw nsw i64 %23, 2
  %27 = getelementptr inbounds i32, ptr %7, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %39, label %30, !prof !97

30:                                               ; preds = %22
  %31 = icmp eq i32 %25, %28
  br i1 %31, label %32, label %45, !prof !98

32:                                               ; preds = %30
  %33 = or disjoint i64 %23, 1
  %34 = getelementptr inbounds i32, ptr %7, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !69
  %36 = getelementptr i32, ptr %24, i64 3
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32, %22
  store i32 %25, ptr %27, align 4, !tbaa !69
  store i32 %28, ptr %24, align 4, !tbaa !69
  %40 = getelementptr i32, ptr %24, i64 3
  %41 = load i32, ptr %40, align 4, !tbaa !69
  %42 = or disjoint i64 %23, 1
  %43 = getelementptr inbounds i32, ptr %7, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !69
  store i32 %44, ptr %40, align 4, !tbaa !69
  store i32 %41, ptr %43, align 4, !tbaa !69
  br label %45

45:                                               ; preds = %30, %32, %39
  %46 = icmp sgt i64 %26, %17
  br i1 %46, label %19, label %22, !prof !99, !llvm.loop !100

47:                                               ; preds = %1, %5, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken13compactRangesEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !58, !range !82, !noundef !83
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %72, !prof !101

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9, !prof !102

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %72, label %13, !prof !103

13:                                               ; preds = %9
  %14 = load i32, ptr %10, align 8, !tbaa !60
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16, !prof !104

16:                                               ; preds = %13, %65
  %17 = phi i32 [ %67, %65 ], [ 0, %13 ]
  %18 = phi i32 [ %66, %65 ], [ 0, %13 ]
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %33, label %20, !prof !105

20:                                               ; preds = %16
  %21 = add i32 %18, 1
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds i32, ptr %7, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = zext i32 %17 to i64
  %26 = getelementptr inbounds i32, ptr %7, i64 %25
  store i32 %24, ptr %26, align 4, !tbaa !69
  %27 = zext i32 %21 to i64
  %28 = getelementptr inbounds i32, ptr %7, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = or disjoint i32 %17, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %7, i64 %31
  store i32 %29, ptr %32, align 4, !tbaa !69
  br label %33

33:                                               ; preds = %16, %20
  %34 = add i32 %18, 2
  %35 = or disjoint i32 %17, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %7, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !69
  br label %39

39:                                               ; preds = %62, %33
  %40 = phi i32 [ %38, %33 ], [ %63, %62 ]
  %41 = phi i32 [ %34, %33 ], [ %64, %62 ]
  %42 = load i32, ptr %10, align 8, !tbaa !60
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %65, !prof !106

44:                                               ; preds = %39
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds i32, ptr %7, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !69
  %48 = add nsw i32 %40, 1
  %49 = icmp slt i32 %48, %47
  br i1 %49, label %62, label %50, !prof !107

50:                                               ; preds = %44
  %51 = add nuw i32 %41, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %7, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !69
  %55 = icmp eq i32 %48, %47
  %56 = icmp slt i32 %40, %54
  %57 = select i1 %55, i1 true, i1 %56, !prof !108
  br i1 %57, label %58, label %59, !prof !108

58:                                               ; preds = %50
  store i32 %54, ptr %37, align 4, !tbaa !69
  br label %59

59:                                               ; preds = %50, %58
  %60 = phi i32 [ %54, %58 ], [ %40, %50 ]
  %61 = add i32 %41, 2
  br label %62

62:                                               ; preds = %44, %59
  %63 = phi i32 [ %60, %59 ], [ %40, %44 ]
  %64 = phi i32 [ %61, %59 ], [ %41, %44 ]
  br i1 %49, label %65, label %39, !prof !107

65:                                               ; preds = %62, %39
  %66 = phi i32 [ %41, %39 ], [ %64, %62 ]
  %67 = add i32 %17, 2
  %68 = load i32, ptr %10, align 8, !tbaa !60
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %16, label %70, !prof !109, !llvm.loop !110

70:                                               ; preds = %65, %13
  %71 = phi i32 [ 0, %13 ], [ %67, %65 ]
  store i32 %71, ptr %10, align 8, !tbaa !60
  store i8 1, ptr %2, align 1, !tbaa !58
  br label %72

72:                                               ; preds = %1, %5, %9, %70
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken11mergeRangesEPKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %1, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 284, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #11
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %187, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !67
  %21 = load ptr, ptr %0, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 14
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %24 = load ptr, ptr %1, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 14
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %27 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %19
  %31 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !61
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  store i32 %32, ptr %33, align 4, !tbaa !61
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = zext i32 %32 to i64
  %37 = shl nuw nsw i64 %36, 2
  %38 = load ptr, ptr %35, align 8, !tbaa !47
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %37)
  store ptr %41, ptr %27, align 8, !tbaa !65
  %42 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !60
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %30
  %46 = load ptr, ptr %16, align 8, !tbaa !65
  br label %51

47:                                               ; preds = %51, %30
  %48 = phi i32 [ %43, %30 ], [ %57, %51 ]
  %49 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  store i32 %48, ptr %49, align 8, !tbaa !60
  %50 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 1
  store i8 1, ptr %50, align 8, !tbaa !50
  br label %187

51:                                               ; preds = %45, %51
  %52 = phi i64 [ 0, %45 ], [ %56, %51 ]
  %53 = getelementptr inbounds i32, ptr %46, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !69
  %55 = getelementptr inbounds i32, ptr %41, i64 %52
  store i32 %54, ptr %55, align 4, !tbaa !69
  %56 = add nuw nsw i64 %52, 1
  %57 = load i32, ptr %42, align 8, !tbaa !60
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %51, label %47, !llvm.loop !111

60:                                               ; preds = %19
  %61 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !60
  %63 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !60
  %65 = add i32 %64, %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !61
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !61
  %72 = add i32 %71, %67
  br label %73

73:                                               ; preds = %60, %69
  %74 = phi i32 [ %72, %69 ], [ %67, %60 ]
  %75 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = zext i32 %74 to i64
  %78 = shl nuw nsw i64 %77, 2
  %79 = load ptr, ptr %76, align 8, !tbaa !47
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %76, i64 noundef %78)
  %83 = load ptr, ptr %27, align 8
  br label %84

84:                                               ; preds = %183, %73
  %85 = phi i32 [ 0, %73 ], [ %184, %183 ]
  %86 = phi i32 [ 0, %73 ], [ %185, %183 ]
  %87 = phi i32 [ 0, %73 ], [ %186, %183 ]
  %88 = load i32, ptr %61, align 8, !tbaa !60
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %118, label %90

90:                                               ; preds = %84
  %91 = load i32, ptr %63, align 8, !tbaa !60
  %92 = icmp ult i32 %86, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %75, align 8, !tbaa !62
  %95 = load ptr, ptr %27, align 8, !tbaa !65
  %96 = load ptr, ptr %94, align 8, !tbaa !47
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %95)
  %99 = load i32, ptr %63, align 8, !tbaa !60
  %100 = load i32, ptr %61, align 8, !tbaa !60
  %101 = add i32 %100, %99
  store i32 %101, ptr %61, align 8, !tbaa !60
  store ptr %82, ptr %27, align 8, !tbaa !65
  store i32 %74, ptr %66, align 4, !tbaa !61
  br label %187

102:                                              ; preds = %90
  br i1 %89, label %118, label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %16, align 8, !tbaa !65
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i32 [ 0, %103 ], [ %116, %105 ]
  %107 = phi i32 [ %87, %103 ], [ %113, %105 ]
  %108 = phi i32 [ %86, %103 ], [ %109, %105 ]
  %109 = add i32 %108, 1
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i32, ptr %104, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !69
  %113 = add i32 %107, 1
  %114 = zext i32 %107 to i64
  %115 = getelementptr inbounds i32, ptr %82, i64 %114
  store i32 %112, ptr %115, align 4, !tbaa !69
  %116 = add nuw nsw i32 %106, 1
  %117 = icmp eq i32 %106, 0
  br i1 %117, label %105, label %183, !llvm.loop !112

118:                                              ; preds = %84, %102
  %119 = load i32, ptr %63, align 8, !tbaa !60
  %120 = icmp ult i32 %86, %119
  br i1 %120, label %134, label %121

121:                                              ; preds = %118, %121
  %122 = phi i32 [ %132, %121 ], [ 0, %118 ]
  %123 = phi i32 [ %129, %121 ], [ %87, %118 ]
  %124 = phi i32 [ %125, %121 ], [ %85, %118 ]
  %125 = add i32 %124, 1
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i32, ptr %83, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !69
  %129 = add i32 %123, 1
  %130 = zext i32 %123 to i64
  %131 = getelementptr inbounds i32, ptr %82, i64 %130
  store i32 %128, ptr %131, align 4, !tbaa !69
  %132 = add nuw nsw i32 %122, 1
  %133 = icmp eq i32 %122, 0
  br i1 %133, label %121, label %183, !llvm.loop !113

134:                                              ; preds = %118
  %135 = load ptr, ptr %16, align 8, !tbaa !65
  %136 = zext i32 %86 to i64
  %137 = getelementptr inbounds i32, ptr %135, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !69
  %139 = zext i32 %85 to i64
  %140 = getelementptr inbounds i32, ptr %83, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !69
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %156, label %143

143:                                              ; preds = %134
  %144 = icmp eq i32 %138, %141
  br i1 %144, label %146, label %145

145:                                              ; preds = %146, %143
  br label %170

146:                                              ; preds = %143
  %147 = add nuw i32 %86, 1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %135, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !69
  %151 = add i32 %85, 1
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %83, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !69
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %145

156:                                              ; preds = %146, %134
  br label %157

157:                                              ; preds = %156, %157
  %158 = phi i32 [ %168, %157 ], [ 0, %156 ]
  %159 = phi i32 [ %165, %157 ], [ %87, %156 ]
  %160 = phi i32 [ %161, %157 ], [ %86, %156 ]
  %161 = add i32 %160, 1
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i32, ptr %135, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !69
  %165 = add i32 %159, 1
  %166 = zext i32 %159 to i64
  %167 = getelementptr inbounds i32, ptr %82, i64 %166
  store i32 %164, ptr %167, align 4, !tbaa !69
  %168 = add nuw nsw i32 %158, 1
  %169 = icmp eq i32 %158, 0
  br i1 %169, label %157, label %183, !llvm.loop !114

170:                                              ; preds = %145, %170
  %171 = phi i32 [ %181, %170 ], [ 0, %145 ]
  %172 = phi i32 [ %178, %170 ], [ %87, %145 ]
  %173 = phi i32 [ %174, %170 ], [ %85, %145 ]
  %174 = add i32 %173, 1
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds i32, ptr %83, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !69
  %178 = add i32 %172, 1
  %179 = zext i32 %172 to i64
  %180 = getelementptr inbounds i32, ptr %82, i64 %179
  store i32 %177, ptr %180, align 4, !tbaa !69
  %181 = add nuw nsw i32 %171, 1
  %182 = icmp eq i32 %171, 0
  br i1 %182, label %170, label %183, !llvm.loop !115

183:                                              ; preds = %105, %121, %170, %157
  %184 = phi i32 [ %85, %157 ], [ %174, %170 ], [ %125, %121 ], [ %85, %105 ]
  %185 = phi i32 [ %161, %157 ], [ %86, %170 ], [ %86, %121 ], [ %109, %105 ]
  %186 = phi i32 [ %165, %157 ], [ %178, %170 ], [ %129, %121 ], [ %113, %105 ]
  br label %84, !llvm.loop !116

187:                                              ; preds = %15, %93, %47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken14subtractRangesEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %156, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %156, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %1, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !68
  %13 = icmp eq i16 %12, 5
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 17
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %1)
  br label %156

18:                                               ; preds = %10
  %19 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %19, align 8, !tbaa !67
  %20 = load ptr, ptr %0, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 14
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %23 = load ptr, ptr %0, align 8, !tbaa !47
  %24 = getelementptr inbounds ptr, ptr %23, i64 15
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %26 = load ptr, ptr %1, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 14
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %29 = load ptr, ptr %1, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 15
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %32 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !60
  %36 = add i32 %35, %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !61
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %18
  %41 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !61
  %43 = add i32 %42, %38
  br label %44

44:                                               ; preds = %18, %40
  %45 = phi i32 [ %43, %40 ], [ %38, %18 ]
  %46 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  %48 = zext i32 %45 to i64
  %49 = shl nuw nsw i64 %48, 2
  %50 = load ptr, ptr %47, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %49)
  %54 = load i32, ptr %32, align 8, !tbaa !60
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %123, label %56

56:                                               ; preds = %44
  %57 = load ptr, ptr %3, align 8
  br label %58

58:                                               ; preds = %56, %117
  %59 = phi i32 [ 0, %56 ], [ %120, %117 ]
  %60 = phi i32 [ 0, %56 ], [ %119, %117 ]
  %61 = phi i32 [ 0, %56 ], [ %118, %117 ]
  %62 = load i32, ptr %34, align 8, !tbaa !60
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %58
  %65 = zext i32 %60 to i64
  %66 = getelementptr inbounds i32, ptr %57, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !69
  %68 = add i32 %60, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %57, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !69
  %72 = load ptr, ptr %7, align 8, !tbaa !65
  %73 = zext i32 %61 to i64
  %74 = getelementptr inbounds i32, ptr %72, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !69
  %76 = add nuw i32 %61, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %72, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !69
  %80 = icmp slt i32 %71, %75
  br i1 %80, label %81, label %90

81:                                               ; preds = %64
  %82 = add i32 %59, 1
  %83 = zext i32 %59 to i64
  %84 = getelementptr inbounds i32, ptr %53, i64 %83
  store i32 %67, ptr %84, align 4, !tbaa !69
  %85 = add i32 %60, 2
  %86 = load i32, ptr %70, align 4, !tbaa !69
  %87 = add i32 %59, 2
  %88 = zext i32 %82 to i64
  %89 = getelementptr inbounds i32, ptr %53, i64 %88
  store i32 %86, ptr %89, align 4, !tbaa !69
  br label %117

90:                                               ; preds = %64
  %91 = icmp sgt i32 %67, %79
  br i1 %91, label %115, label %92

92:                                               ; preds = %90
  %93 = icmp sgt i32 %75, %67
  %94 = icmp sgt i32 %71, %79
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = add i32 %60, 2
  br label %117

98:                                               ; preds = %92
  br i1 %93, label %102, label %99

99:                                               ; preds = %98
  %100 = add nsw i32 %79, 1
  store i32 %100, ptr %66, align 4, !tbaa !69
  %101 = add i32 %61, 2
  br label %117

102:                                              ; preds = %98
  %103 = add i32 %59, 1
  %104 = zext i32 %59 to i64
  %105 = getelementptr inbounds i32, ptr %53, i64 %104
  store i32 %67, ptr %105, align 4, !tbaa !69
  %106 = add nsw i32 %75, -1
  %107 = add i32 %59, 2
  %108 = zext i32 %103 to i64
  %109 = getelementptr inbounds i32, ptr %53, i64 %108
  store i32 %106, ptr %109, align 4, !tbaa !69
  br i1 %94, label %112, label %110

110:                                              ; preds = %102
  %111 = add i32 %60, 2
  br label %117

112:                                              ; preds = %102
  %113 = add nsw i32 %79, 1
  store i32 %113, ptr %66, align 4, !tbaa !69
  %114 = add i32 %61, 2
  br label %117

115:                                              ; preds = %90
  %116 = add i32 %61, 2
  br label %117

117:                                              ; preds = %115, %99, %112, %110, %96, %81
  %118 = phi i32 [ %61, %81 ], [ %61, %96 ], [ %101, %99 ], [ %61, %110 ], [ %114, %112 ], [ %116, %115 ]
  %119 = phi i32 [ %85, %81 ], [ %97, %96 ], [ %60, %99 ], [ %111, %110 ], [ %60, %112 ], [ %60, %115 ]
  %120 = phi i32 [ %87, %81 ], [ %59, %96 ], [ %59, %99 ], [ %107, %110 ], [ %107, %112 ], [ %59, %115 ]
  %121 = load i32, ptr %32, align 8, !tbaa !60
  %122 = icmp ult i32 %119, %121
  br i1 %122, label %58, label %123, !llvm.loop !117

123:                                              ; preds = %58, %117, %44
  %124 = phi i32 [ 0, %44 ], [ %60, %58 ], [ %119, %117 ]
  %125 = phi i32 [ 0, %44 ], [ %59, %58 ], [ %120, %117 ]
  %126 = load i32, ptr %32, align 8, !tbaa !60
  %127 = icmp ult i32 %124, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %123
  %129 = load ptr, ptr %3, align 8, !tbaa !65
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i32 [ %125, %128 ], [ %144, %130 ]
  %132 = phi i32 [ %124, %128 ], [ %140, %130 ]
  %133 = add nuw i32 %132, 1
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds i32, ptr %129, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !69
  %137 = add i32 %131, 1
  %138 = zext i32 %131 to i64
  %139 = getelementptr inbounds i32, ptr %53, i64 %138
  store i32 %136, ptr %139, align 4, !tbaa !69
  %140 = add i32 %132, 2
  %141 = zext i32 %133 to i64
  %142 = getelementptr inbounds i32, ptr %129, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !69
  %144 = add i32 %131, 2
  %145 = zext i32 %137 to i64
  %146 = getelementptr inbounds i32, ptr %53, i64 %145
  store i32 %143, ptr %146, align 4, !tbaa !69
  %147 = load i32, ptr %32, align 8, !tbaa !60
  %148 = icmp ult i32 %140, %147
  br i1 %148, label %130, label %149, !llvm.loop !118

149:                                              ; preds = %130, %123
  %150 = phi i32 [ %125, %123 ], [ %144, %130 ]
  %151 = load ptr, ptr %46, align 8, !tbaa !62
  %152 = load ptr, ptr %3, align 8, !tbaa !65
  %153 = load ptr, ptr %151, align 8, !tbaa !47
  %154 = getelementptr inbounds ptr, ptr %153, i64 3
  %155 = load ptr, ptr %154, align 8
  tail call void %155(ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef %152)
  store ptr %53, ptr %3, align 8, !tbaa !65
  store i32 %150, ptr %32, align 8, !tbaa !60
  store i32 %45, ptr %37, align 4, !tbaa !61
  br label %156

156:                                              ; preds = %2, %6, %149, %14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken15intersectRangesEPS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %130, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %130, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 8
  store ptr null, ptr %11, align 8, !tbaa !67
  %12 = load ptr, ptr %0, align 8, !tbaa !47
  %13 = getelementptr inbounds ptr, ptr %12, i64 14
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 15
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %18 = load ptr, ptr %1, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %21 = load ptr, ptr %1, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 15
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !60
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !60
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !61
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %10
  %33 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %1, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !61
  %35 = add i32 %34, %30
  br label %36

36:                                               ; preds = %10, %32
  %37 = phi i32 [ %35, %32 ], [ %30, %10 ]
  %38 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !62
  %40 = zext i32 %37 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = load ptr, ptr %39, align 8, !tbaa !47
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %41)
  %46 = load i32, ptr %24, align 8, !tbaa !60
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %123, label %48

48:                                               ; preds = %36
  %49 = load ptr, ptr %3, align 8
  br label %50

50:                                               ; preds = %48, %117
  %51 = phi i32 [ 0, %48 ], [ %120, %117 ]
  %52 = phi i32 [ 0, %48 ], [ %119, %117 ]
  %53 = phi i32 [ 0, %48 ], [ %118, %117 ]
  %54 = load i32, ptr %26, align 8, !tbaa !60
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %123

56:                                               ; preds = %50
  %57 = zext i32 %52 to i64
  %58 = getelementptr inbounds i32, ptr %49, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !69
  %60 = add i32 %52, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %49, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !69
  %64 = load ptr, ptr %7, align 8, !tbaa !65
  %65 = zext i32 %53 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !69
  %68 = add nuw i32 %53, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %64, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !69
  %72 = icmp slt i32 %63, %67
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = add i32 %52, 2
  br label %117

75:                                               ; preds = %56
  %76 = icmp sgt i32 %59, %71
  br i1 %76, label %112, label %77

77:                                               ; preds = %75
  %78 = icmp sgt i32 %67, %59
  %79 = icmp sgt i32 %63, %71
  %80 = select i1 %78, i1 true, i1 %79
  %81 = add i32 %51, 1
  %82 = zext i32 %51 to i64
  %83 = getelementptr inbounds i32, ptr %45, i64 %82
  br i1 %80, label %89, label %84

84:                                               ; preds = %77
  store i32 %59, ptr %83, align 4, !tbaa !69
  %85 = add i32 %51, 2
  %86 = zext i32 %81 to i64
  %87 = getelementptr inbounds i32, ptr %45, i64 %86
  store i32 %63, ptr %87, align 4, !tbaa !69
  %88 = add i32 %52, 2
  br label %117

89:                                               ; preds = %77
  %90 = add i32 %51, 2
  %91 = zext i32 %81 to i64
  %92 = getelementptr inbounds i32, ptr %45, i64 %91
  br i1 %78, label %101, label %93

93:                                               ; preds = %89
  store i32 %59, ptr %83, align 4, !tbaa !69
  store i32 %71, ptr %92, align 4, !tbaa !69
  %94 = add i32 %53, 2
  %95 = load i32, ptr %26, align 8, !tbaa !60
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = add nsw i32 %71, 1
  store i32 %98, ptr %58, align 4, !tbaa !69
  br label %117

99:                                               ; preds = %93
  %100 = add i32 %52, 2
  br label %117

101:                                              ; preds = %89
  store i32 %67, ptr %83, align 4, !tbaa !69
  br i1 %79, label %104, label %102

102:                                              ; preds = %101
  store i32 %63, ptr %92, align 4, !tbaa !69
  %103 = add i32 %52, 2
  br label %117

104:                                              ; preds = %101
  store i32 %71, ptr %92, align 4, !tbaa !69
  %105 = add i32 %53, 2
  %106 = load i32, ptr %26, align 8, !tbaa !60
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = add nsw i32 %71, 1
  store i32 %109, ptr %58, align 4, !tbaa !69
  br label %117

110:                                              ; preds = %104
  %111 = add i32 %52, 2
  br label %117

112:                                              ; preds = %75
  %113 = add i32 %53, 2
  %114 = icmp ult i32 %113, %54
  %115 = add i32 %52, 2
  %116 = select i1 %114, i32 %52, i32 %115
  br label %117

117:                                              ; preds = %112, %99, %97, %108, %110, %102, %84, %73
  %118 = phi i32 [ %53, %73 ], [ %53, %84 ], [ %94, %97 ], [ %94, %99 ], [ %53, %102 ], [ %105, %108 ], [ %105, %110 ], [ %113, %112 ]
  %119 = phi i32 [ %74, %73 ], [ %88, %84 ], [ %52, %97 ], [ %100, %99 ], [ %103, %102 ], [ %52, %108 ], [ %111, %110 ], [ %116, %112 ]
  %120 = phi i32 [ %51, %73 ], [ %85, %84 ], [ %90, %97 ], [ %90, %99 ], [ %90, %102 ], [ %90, %108 ], [ %90, %110 ], [ %51, %112 ]
  %121 = load i32, ptr %24, align 8, !tbaa !60
  %122 = icmp ult i32 %119, %121
  br i1 %122, label %50, label %123, !llvm.loop !119

123:                                              ; preds = %50, %117, %36
  %124 = phi i32 [ 0, %36 ], [ %51, %50 ], [ %120, %117 ]
  %125 = load ptr, ptr %38, align 8, !tbaa !62
  %126 = load ptr, ptr %3, align 8, !tbaa !65
  %127 = load ptr, ptr %125, align 8, !tbaa !47
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  tail call void %129(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %126)
  store ptr %45, ptr %3, align 8, !tbaa !65
  store i32 %124, ptr %24, align 8, !tbaa !60
  store i32 %37, ptr %29, align 4, !tbaa !61
  br label %130

130:                                              ; preds = %2, %6, %123
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !68
  %6 = and i16 %5, -2
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %13, label %8, !prof !75

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 539, i32 noundef 287, ptr noundef %2)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 14
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !120
  %17 = load ptr, ptr %0, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 15
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !121
  %20 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !60
  %24 = add i32 %23, -1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %21, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !69
  %28 = tail call noundef ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb(ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext false)
  %29 = load ptr, ptr %20, align 8, !tbaa !65
  %30 = load i32, ptr %29, align 4, !tbaa !69
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37, !prof !75

32:                                               ; preds = %13
  %33 = add nsw i32 %30, -1
  %34 = load ptr, ptr %28, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 12
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(72) %28, i32 noundef 0, i32 noundef %33), !prof !122
  br label %37

37:                                               ; preds = %32, %13
  %38 = load i32, ptr %22, align 8, !tbaa !60
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %44, !prof !123

41:                                               ; preds = %44, %37
  %42 = load i32, ptr @_ZN11xercesc_2_75Token9UTF16_MAXE, align 4, !tbaa !69
  %43 = icmp eq i32 %27, %42
  br i1 %43, label %68, label %63, !prof !93

44:                                               ; preds = %37, %44
  %45 = phi i32 [ %59, %44 ], [ 1, %37 ]
  %46 = load ptr, ptr %20, align 8, !tbaa !65
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !69
  %50 = add nsw i32 %49, 1
  %51 = add nuw i32 %45, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %46, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !69
  %55 = add nsw i32 %54, -1
  %56 = load ptr, ptr %28, align 8, !tbaa !47
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(72) %28, i32 noundef %50, i32 noundef %55), !prof !124
  %59 = add i32 %45, 2
  %60 = load i32, ptr %22, align 8, !tbaa !60
  %61 = add i32 %60, -2
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %44, label %41, !prof !125, !llvm.loop !126

63:                                               ; preds = %41
  %64 = add nsw i32 %27, 1
  %65 = load ptr, ptr %28, align 8, !tbaa !47
  %66 = getelementptr inbounds ptr, ptr %65, i64 12
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(72) %28, i32 noundef %64, i32 noundef %42), !prof !122
  br label %68

68:                                               ; preds = %63, %41
  %69 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %28, i64 0, i32 2
  store i8 1, ptr %69, align 1, !tbaa !58
  ret ptr %28
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710RangeToken5matchEi(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !127 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !128

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i16 %9, 4
  %11 = icmp slt i32 %1, 256
  br i1 %10, label %12, label %47, !prof !129

12:                                               ; preds = %7
  br i1 %11, label %13, label %23, !prof !129

13:                                               ; preds = %12
  %14 = load ptr, ptr %3, align 8, !tbaa !63
  %15 = sdiv i32 %1, 32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = and i32 %1, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br label %82

23:                                               ; preds = %12
  %24 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !60
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  br label %32

32:                                               ; preds = %29, %44
  %33 = phi i32 [ %25, %29 ], [ %45, %44 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !69
  %37 = icmp sgt i32 %36, %1
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = add nuw i32 %33, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %31, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !69
  %43 = icmp slt i32 %42, %1
  br i1 %43, label %44, label %82

44:                                               ; preds = %32, %38
  %45 = add i32 %33, 2
  %46 = icmp ult i32 %45, %27
  br i1 %46, label %32, label %82, !llvm.loop !130

47:                                               ; preds = %7
  br i1 %11, label %48, label %58

48:                                               ; preds = %47
  %49 = load ptr, ptr %3, align 8, !tbaa !63
  %50 = sdiv i32 %1, 32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !69
  %54 = and i32 %1, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp eq i32 %56, 0
  br label %82

58:                                               ; preds = %47
  %59 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !60
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !65
  br label %67

67:                                               ; preds = %64, %79
  %68 = phi i32 [ %60, %64 ], [ %80, %79 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %66, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !69
  %72 = icmp sgt i32 %71, %1
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = add nuw i32 %68, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %66, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !69
  %78 = icmp slt i32 %77, %1
  br i1 %78, label %79, label %82

79:                                               ; preds = %67, %73
  %80 = add i32 %68, 2
  %81 = icmp ult i32 %80, %62
  br i1 %81, label %67, label %82, !llvm.loop !131

82:                                               ; preds = %73, %79, %38, %44, %23, %58, %48, %13
  %83 = phi i1 [ %22, %13 ], [ %57, %48 ], [ true, %58 ], [ false, %23 ], [ false, %44 ], [ true, %38 ], [ true, %79 ], [ false, %73 ]
  ret i1 %83
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710RangeToken11doCreateMapEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32), !prof !133
  %8 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 3
  store i32 %10, ptr %11, align 4, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !69
  %12 = load i32, ptr %9, align 8, !tbaa !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14, !prof !87

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::RangeToken", ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i32 [ 0, %14 ], [ %45, %44 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = or disjoint i32 %18, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %16, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = icmp slt i32 %21, 256
  br i1 %26, label %27, label %48, !prof !134

27:                                               ; preds = %17
  %28 = icmp sgt i32 %21, %25
  br i1 %28, label %31, label %29, !prof !135

29:                                               ; preds = %27
  %30 = tail call i32 @llvm.smin.i32(i32 %25, i32 255)
  br label %33

31:                                               ; preds = %33, %27
  %32 = icmp sgt i32 %25, 255
  br i1 %32, label %48, label %44, !prof !136

33:                                               ; preds = %29, %33
  %34 = phi i32 [ %42, %33 ], [ %21, %29 ]
  %35 = and i32 %34, 31
  %36 = shl nuw i32 1, %35
  %37 = sdiv i32 %34, 32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %7, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !69
  %41 = or i32 %40, %36
  store i32 %41, ptr %39, align 4, !tbaa !69
  %42 = add nsw i32 %34, 1
  %43 = icmp slt i32 %34, %30
  br i1 %43, label %33, label %31, !prof !137, !llvm.loop !138

44:                                               ; preds = %31
  %45 = add i32 %18, 2
  %46 = load i32, ptr %9, align 8, !tbaa !60
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %17, label %49, !prof !139, !llvm.loop !140

48:                                               ; preds = %31, %17
  store i32 %18, ptr %11, align 4, !tbaa !59
  br label %49

49:                                               ; preds = %44, %48, %1
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token8getChildEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !141 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMinEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token14getReferenceNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token9getStringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token7getCharEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 !prof !66 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMinEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.1, i32 noundef 222, i32 noundef 294, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #11
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !66 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !66 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_710RangeTokenC2EtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE, i64 18}
!36 = !{ptr @_ZN11xercesc_2_710RangeTokenD2Ev, ptr @_ZN11xercesc_2_75TokenD2Ev, i64 18}
!37 = !{ptr @_ZN11xercesc_2_710RangeTokenD0Ev, ptr @_ZN11xercesc_2_710RangeTokenD2Ev, i64 18}
!38 = !{ptr @_ZN11xercesc_2_710RangeTokenD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 18}
!39 = !{ptr @_ZN11xercesc_2_710RangeToken8addRangeEii, ptr @_ZN11xercesc_2_710RangeToken6expandEj, i64 64}
!40 = !{ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710RangeToken10sortRangesEv, i64 5}
!41 = !{ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710RangeToken13compactRangesEv, i64 5}
!42 = !{ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712TokenFactory11createRangeEb, i64 5}
!43 = !{ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710RangeToken8addRangeEii, i64 734}
!44 = !{ptr @_ZN11xercesc_2_710RangeToken5matchEi, ptr @_ZN11xercesc_2_710RangeToken11doCreateMapEv, i64 7}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 18}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !56, i64 24}
!51 = !{!"_ZTSN11xercesc_2_710RangeTokenE", !52, i64 0, !56, i64 24, !56, i64 25, !57, i64 28, !57, i64 32, !57, i64 36, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64}
!52 = !{!"_ZTSN11xercesc_2_75TokenE", !53, i64 8, !55, i64 16}
!53 = !{!"short", !54, i64 0}
!54 = !{!"omnipotent char", !49, i64 0}
!55 = !{!"any pointer", !54, i64 0}
!56 = !{!"bool", !54, i64 0}
!57 = !{!"int", !54, i64 0}
!58 = !{!51, !56, i64 25}
!59 = !{!51, !57, i64 28}
!60 = !{!51, !57, i64 32}
!61 = !{!51, !57, i64 36}
!62 = !{!51, !55, i64 64}
!63 = !{!51, !55, i64 40}
!64 = !{!"VP", i32 0, i64 18, i64 -7405368087501025645, i64 18}
!65 = !{!51, !55, i64 48}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!51, !55, i64 56}
!68 = !{!52, !53, i64 8}
!69 = !{!57, !57, i64 0}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !71, !72}
!74 = !{!"function_entry_count", i64 5}
!75 = !{!"branch_weights", i32 5, i32 0}
!76 = !{!"function_entry_count", i64 745}
!77 = !{!"branch_weights", i32 13, i32 732}
!78 = !{!"VP", i32 0, i64 13, i64 8345045103670217670, i64 13}
!79 = !{!"branch_weights", i32 2, i32 730}
!80 = !{!"branch_weights", i32 666, i32 64}
!81 = !{!"branch_weights", i32 730, i32 0}
!82 = !{i8 0, i8 2}
!83 = !{}
!84 = !{!"branch_weights", i32 0, i32 730}
!85 = !{!"function_entry_count", i64 64}
!86 = !{!"VP", i32 0, i64 64, i64 8345045103670217670, i64 64}
!87 = !{!"branch_weights", i32 1, i32 127}
!88 = !{!"VP", i32 0, i64 64, i64 -7405368087501025645, i64 64}
!89 = !{!"branch_weights", i32 12953, i32 127}
!90 = distinct !{!90, !71, !72}
!91 = !{!"function_entry_count", i64 16}
!92 = !{!"branch_weights", i32 5, i32 11}
!93 = !{!"branch_weights", i32 0, i32 5}
!94 = !{!"branch_weights", i32 159, i32 1}
!95 = !{!"branch_weights", i32 24513, i32 159}
!96 = distinct !{!96, !71, !72}
!97 = !{!"branch_weights", i32 27744, i32 72063}
!98 = !{!"branch_weights", i32 0, i32 72063}
!99 = !{!"branch_weights", i32 771, i32 99036}
!100 = distinct !{!100, !71, !72}
!101 = !{!"branch_weights", i32 13, i32 3}
!102 = !{!"branch_weights", i32 0, i32 13}
!103 = !{!"branch_weights", i32 7, i32 6}
!104 = !{!"branch_weights", i32 1, i32 191}
!105 = !{!"branch_weights", i32 32, i32 699}
!106 = !{!"branch_weights", i32 772, i32 6}
!107 = !{!"branch_weights", i32 725, i32 47}
!108 = !{!"branch_weights", i32 47, i32 0}
!109 = !{!"branch_weights", i32 23201, i32 191}
!110 = distinct !{!110, !71, !72}
!111 = distinct !{!111, !71, !72}
!112 = distinct !{!112, !71, !72}
!113 = distinct !{!113, !71, !72}
!114 = distinct !{!114, !71, !72}
!115 = distinct !{!115, !71, !72}
!116 = distinct !{!116, !71, !72}
!117 = distinct !{!117, !71, !72}
!118 = distinct !{!118, !71, !72}
!119 = distinct !{!119, !71, !72}
!120 = !{!"VP", i32 0, i64 5, i64 -5250907211680155883, i64 5}
!121 = !{!"VP", i32 0, i64 5, i64 -467017113302997031, i64 5}
!122 = !{!"VP", i32 0, i64 5, i64 -1846495658448105693, i64 5}
!123 = !{!"branch_weights", i32 1, i32 159}
!124 = !{!"VP", i32 0, i64 724, i64 -1846495658448105693, i64 724}
!125 = !{!"branch_weights", i32 23009, i32 159}
!126 = distinct !{!126, !71, !72}
!127 = !{!"function_entry_count", i64 1301032}
!128 = !{!"branch_weights", i32 7, i32 1301025}
!129 = !{!"branch_weights", i32 1301032, i32 0}
!130 = distinct !{!130, !71, !72}
!131 = distinct !{!131, !71, !72}
!132 = !{!"function_entry_count", i64 17}
!133 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!134 = !{!"branch_weights", i32 63, i32 4}
!135 = !{!"branch_weights", i32 1, i32 251}
!136 = !{!"branch_weights", i32 5, i32 58}
!137 = !{!"branch_weights", i32 5049, i32 251}
!138 = distinct !{!138, !71, !72}
!139 = !{!"branch_weights", i32 945, i32 127}
!140 = distinct !{!140, !71, !72}
!141 = !{!"function_entry_count", i64 79}
!142 = !{!52, !55, i64 16}
!143 = !{!144, !55, i64 40}
!144 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !145, i64 8, !55, i64 16, !57, i64 24, !55, i64 32, !55, i64 40}
!145 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !54, i64 0}
