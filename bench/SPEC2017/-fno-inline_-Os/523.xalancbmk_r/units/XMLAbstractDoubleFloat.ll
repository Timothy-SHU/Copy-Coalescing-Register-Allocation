; ModuleID = 'XMLAbstractDoubleFloat.cpp'
source_filename = "XMLAbstractDoubleFloat.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLAbstractDoubleFloat" = type { %"class.xercesc_2_7::XMLNumber", double, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE7releaseEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTVN11xercesc_2_721NumberFormatExceptionE = comdat any

@_ZTVN11xercesc_2_722XMLAbstractDoubleFloatE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722XMLAbstractDoubleFloatE, ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev, ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloatD0Ev, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSerializableEv, ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat12getProtoTypeEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv, ptr @__cxa_pure_virtual] }, align 8
@.str = private unnamed_addr constant [27 x i8] c"XMLAbstractDoubleFloat.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni14fgNegINFStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgPosINFStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgNaNStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgPosZeroStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgNegZeroStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L7expSignE = internal global [3 x i16] [i16 101, i16 69, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"XMLAbstractDoubleFloat\00", align 1
@_ZN11xercesc_2_722XMLAbstractDoubleFloat27classXMLAbstractDoubleFloatE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE = dso_local constant [40 x i8] c"N11xercesc_2_722XMLAbstractDoubleFloatE\00", align 1
@_ZTIN11xercesc_2_79XMLNumberE = external constant ptr
@_ZTIN11xercesc_2_722XMLAbstractDoubleFloatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE, ptr @_ZTIN11xercesc_2_79XMLNumberE }, align 8
@_ZTVN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721NumberFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv, ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE = external constant [0 x i16], align 2
@switch.table._ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv = private unnamed_addr constant [3 x ptr] [ptr @_ZN11xercesc_2_76XMLUni14fgNegINFStringE, ptr @_ZN11xercesc_2_76XMLUni14fgPosINFStringE, ptr @_ZN11xercesc_2_76XMLUni11fgNaNStringE], align 8
@switch.table._ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE = private unnamed_addr constant [3 x i32] [i32 -1, i32 1, i32 2], align 4

@_ZN11xercesc_2_722XMLAbstractDoubleFloatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_722XMLAbstractDoubleFloatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 4, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 4, !tbaa !58
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 0, ptr %6, align 1, !tbaa !59
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_722XMLAbstractDoubleFloatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #17
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !61
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = load ptr, ptr %10, align 8, !tbaa !44
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #17
          to label %16 unwind label %17

16:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #19
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 {
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat4initEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca [101 x i8], align 16
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2, !tbaa !64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7, %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 261, ptr noundef %13) #17
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #20
  br label %94

17:                                               ; preds = %7
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %19) #17
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !62
  %22 = load ptr, ptr %18, align 8, !tbaa !61
  %23 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %22) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %24 = load ptr, ptr %18, align 8, !tbaa !61
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %23, ptr noundef %24) #17
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %23) #17
          to label %25 unwind label %32

25:                                               ; preds = %17
  %26 = load i16, ptr %23, align 2, !tbaa !64
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = call ptr @__cxa_allocate_exception(i64 48) #20
  %30 = load ptr, ptr %18, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 261, ptr noundef %30) #17
          to label %31 unwind label %34

31:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
          to label %96 unwind label %32

32:                                               ; preds = %36, %31, %17
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %92

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #20
  br label %92

36:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_722XMLAbstractDoubleFloat13normalizeZeroEPt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %23) #17
          to label %37 unwind label %32

37:                                               ; preds = %36
  %38 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgNegINFStringE) #17
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 0, ptr %40, align 8, !tbaa !57
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 -1, ptr %41, align 8, !tbaa !60
  br label %91

42:                                               ; preds = %37
  %43 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgPosINFStringE) #17
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 1, ptr %45, align 8, !tbaa !57
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 1, ptr %46, align 8, !tbaa !60
  br label %91

47:                                               ; preds = %42
  %48 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgNaNStringE) #17
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 2, ptr %50, align 8, !tbaa !57
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 1, ptr %51, align 8, !tbaa !60
  br label %91

52:                                               ; preds = %47
  %53 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %23) #17
  %54 = icmp ult i32 %53, 100
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %4) #20
  %56 = call noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %57 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef nonnull %23, ptr noundef nonnull %4, i32 noundef 100, ptr noundef %56) #17
          to label %58 unwind label %67

58:                                               ; preds = %55
  %59 = getelementptr inbounds [101 x i8], ptr %4, i64 0, i64 100
  store i8 0, ptr %59, align 4, !tbaa !66
  %60 = invoke noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %4) #17
          to label %61 unwind label %67

61:                                               ; preds = %58
  %62 = icmp eq i32 %60, %53
  br i1 %62, label %71, label %63

63:                                               ; preds = %61
  %64 = call ptr @__cxa_allocate_exception(i64 48) #20
  %65 = call noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 264, ptr noundef %65) #17
          to label %66 unwind label %69

66:                                               ; preds = %63
  invoke void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
          to label %96 unwind label %67

67:                                               ; preds = %71, %66, %58, %55
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %76

69:                                               ; preds = %63
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %64) #20
  br label %76

71:                                               ; preds = %61
  %72 = load ptr, ptr %0, align 8, !tbaa !44
  %73 = getelementptr inbounds ptr, ptr %72, i64 9
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %4) #17
          to label %75 unwind label %67

75:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %4) #20
  br label %91

76:                                               ; preds = %69, %67
  %77 = phi { ptr, i32 } [ %68, %67 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %4) #20
  br label %92

78:                                               ; preds = %52
  %79 = call noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %80 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull %23, ptr noundef %79) #17
          to label %81 unwind label %87

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %82 = load ptr, ptr %18, align 8, !tbaa !61
  call void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %80, ptr noundef %82) #17
  %83 = load ptr, ptr %0, align 8, !tbaa !44
  %84 = getelementptr inbounds ptr, ptr %83, i64 9
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %80) #17
          to label %86 unwind label %89

86:                                               ; preds = %81
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  br label %91

87:                                               ; preds = %78
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %92

89:                                               ; preds = %81
  %90 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  br label %92

91:                                               ; preds = %75, %86, %44, %49, %39
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void

92:                                               ; preds = %76, %89, %87, %34, %32
  %93 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ], [ %77, %76 ], [ %90, %89 ], [ %88, %87 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br label %94

94:                                               ; preds = %92, %15
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %16, %15 ]
  resume { ptr, i32 } %95

96:                                               ; preds = %66, %31
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #17
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !68

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #17
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr %1, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat13normalizeZeroEPt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !43 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !64
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNegZeroStringE) #17
  br i1 %8, label %46, label %9

9:                                                ; preds = %7
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE) #17
  br i1 %10, label %46, label %11

11:                                               ; preds = %9
  %12 = load i16, ptr %1, align 2, !tbaa !64
  %13 = icmp eq i16 %12, 45
  %14 = icmp eq i16 %12, 43
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i64
  %17 = getelementptr inbounds i16, ptr %1, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !64
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %11, %31
  %21 = phi i16 [ %34, %31 ], [ %18, %11 ]
  %22 = phi ptr [ %25, %31 ], [ %17, %11 ]
  %23 = phi i8 [ %33, %31 ], [ 1, %11 ]
  %24 = phi i8 [ %32, %31 ], [ 0, %11 ]
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  switch i16 %21, label %43 [
    i16 46, label %26
    i16 48, label %31
  ]

26:                                               ; preds = %20
  %27 = and i8 %24, 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 1, i8 %24
  %30 = select i1 %28, i8 %23, i8 0
  br label %31

31:                                               ; preds = %20, %26
  %32 = phi i8 [ %29, %26 ], [ %24, %20 ]
  %33 = phi i8 [ %30, %26 ], [ %23, %20 ]
  %34 = load i16, ptr %25, align 2, !tbaa !64
  %35 = icmp ne i16 %34, 0
  %36 = and i8 %33, 1
  %37 = icmp ne i8 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %20, label %39, !llvm.loop !73

39:                                               ; preds = %31
  br i1 %37, label %40, label %43

40:                                               ; preds = %11, %39
  br i1 %13, label %41, label %42

41:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNegZeroStringE) #17
  br label %46

42:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE) #17
  br label %46

43:                                               ; preds = %20, %39
  %44 = select i1 %13, i32 -1, i32 1
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 %44, ptr %45, align 8, !tbaa !60
  br label %46

46:                                               ; preds = %43, %42, %41, %2, %4, %7, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !75 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !76

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !64
  %8 = load i16, ptr %1, align 2, !tbaa !64
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !77

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !78

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !64
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !79

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !80

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !64
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !81

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !82

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !64
  %28 = load i16, ptr %26, align 2, !tbaa !64
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !83, !llvm.loop !84

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !85 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !86

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !87

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !88, !llvm.loop !89

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !90 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store ptr %1, ptr %0, align 8, !tbaa !91
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #17
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #17
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %3) #17
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 4, !tbaa !58, !range !95, !noundef !96
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  br label %12

12:                                               ; preds = %7, %11, %5
  %13 = phi ptr [ %6, %5 ], [ %8, %11 ], [ %8, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %3) #17
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = add i32 %4, 8
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 1
  %10 = load ptr, ptr %6, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %9) #17
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !63
  %15 = icmp eq i32 %7, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr align 2 %13, i8 0, i64 %9, i1 false), !tbaa !64
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr %2, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %13, ptr noundef %18) #17
  %19 = load ptr, ptr %14, align 8, !tbaa !63
  %20 = zext i32 %4 to i64
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  store i16 32, ptr %21, align 2, !tbaa !64
  %22 = add i32 %4, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i16, ptr %19, i64 %23
  store i16 40, ptr %24, align 2, !tbaa !64
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8
  br label %32

32:                                               ; preds = %17, %28
  %33 = phi ptr [ %31, %28 ], [ @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE, %17 ]
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %19, ptr noundef nonnull %33) #17
  %34 = load ptr, ptr %14, align 8, !tbaa !63
  %35 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %34) #17
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %34, i64 %36
  store i16 41, ptr %37, align 2, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #8 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !60
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !43 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #17
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %1, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !47
  %12 = fcmp oeq double %9, %11
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = fcmp ogt double %9, %11
  %15 = select i1 %14, i32 1, i32 -1
  br label %42

16:                                               ; preds = %5, %3
  %17 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #17
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !57
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = icmp eq i32 %22, 2
  %28 = icmp eq i32 %24, 2
  %29 = or i1 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = icmp sgt i32 %22, %24
  %32 = select i1 %31, i32 1, i32 -1
  br label %42

33:                                               ; preds = %18, %16
  %34 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #17
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = tail call noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %2) #17, !range !98
  br label %42

39:                                               ; preds = %35, %33
  %40 = tail call noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #17, !range !98
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %26, %20, %7, %39, %37, %30, %13
  %43 = phi i32 [ %32, %30 ], [ %41, %39 ], [ %38, %37 ], [ %15, %13 ], [ 0, %7 ], [ 0, %20 ], [ 2, %26 ]
  ret i32 %43
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSpecialValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp slt i32 %3, 3
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca [65 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #20
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %5, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %1) #17
  %8 = call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 330, i32 noundef 280, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1) #17
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #20
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #20
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr inbounds [3 x i32], ptr @switch.table._ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  ret i32 %15
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat21normalizeDecimalPointEPc(ptr noundef %0) local_unnamed_addr #2 align 2 !prof !43 {
  %2 = tail call ptr @localeconv() #18
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = load i8, ptr %3, align 1, !tbaa !66
  %5 = icmp eq i8 %4, 46
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i8 %4, ptr %7, align 1, !tbaa !66
  br label %10

10:                                               ; preds = %6, %9, %1
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @localeconv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat7convertEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca ptr, align 8
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat21normalizeDecimalPointEPc(ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !97
  %4 = tail call ptr @__errno_location() #23
  store i32 0, ptr %4, align 4, !tbaa !101
  %5 = call double @strtod(ptr noundef %1, ptr noundef nonnull %3) #18
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  store double %5, ptr %6, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !97
  %8 = load i8, ptr %7, align 1, !tbaa !66
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %12 = tail call noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 440, i32 noundef 264, ptr noundef %12) #17
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  %17 = load i32, ptr %4, align 4, !tbaa !101
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  store i8 1, ptr %20, align 4, !tbaa !58
  %21 = fcmp olt double %5, 0.000000e+00
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = fcmp ogt double %5, 0x8010000000000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store double 0.000000e+00, ptr %6, align 8, !tbaa !47
  br label %36

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 0, ptr %26, align 8, !tbaa !57
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 1, ptr %27, align 1, !tbaa !59
  br label %36

28:                                               ; preds = %19
  %29 = fcmp ogt double %5, 0.000000e+00
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = fcmp olt double %5, 0x10000000000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store double 0.000000e+00, ptr %6, align 8, !tbaa !47
  br label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 1, ptr %34, align 8, !tbaa !57
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 1, ptr %35, align 1, !tbaa !59
  br label %36

36:                                               ; preds = %25, %24, %32, %33, %28, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgNegINFStringE) #17
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgPosINFStringE) #17
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgNaNStringE) #17
  br i1 %14, label %15, label %17

15:                                               ; preds = %13, %11, %2
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) #17
  br label %179

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #17
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 1
  %22 = load ptr, ptr %1, align 8, !tbaa !44
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %21) #17
          to label %26 unwind label %53

26:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %25, ptr noundef nonnull %1) #17
          to label %27 unwind label %55

27:                                               ; preds = %26
  %28 = load ptr, ptr %1, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %21) #17
          to label %32 unwind label %57

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %31, ptr noundef nonnull %1) #17
          to label %33 unwind label %59

33:                                               ; preds = %32
  %34 = load ptr, ptr %1, align 8, !tbaa !44
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %21) #17
          to label %38 unwind label %61

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %37, ptr noundef nonnull %1) #17
          to label %39 unwind label %63

39:                                               ; preds = %38
  %40 = add nsw i32 %18, 8
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 1
  %43 = load ptr, ptr %1, align 8, !tbaa !44
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %42) #17
          to label %47 unwind label %65

47:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  invoke void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %46, ptr noundef nonnull %1) #17
          to label %48 unwind label %67

48:                                               ; preds = %47
  store i16 0, ptr %46, align 2, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %49 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L7expSignE) #17
          to label %50 unwind label %69

50:                                               ; preds = %48
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %31, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %1) #17
          to label %96 unwind label %69

53:                                               ; preds = %17
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %171

55:                                               ; preds = %26
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %169

57:                                               ; preds = %27
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %167

59:                                               ; preds = %32
  %60 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %165

61:                                               ; preds = %33
  %62 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %163

63:                                               ; preds = %38
  %64 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %161

65:                                               ; preds = %39
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %159

67:                                               ; preds = %47
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %157

69:                                               ; preds = %52, %48
  %70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %155

71:                                               ; preds = %50
  %72 = ptrtoint ptr %49 to i64
  %73 = ptrtoint ptr %0 to i64
  %74 = sub i64 %72, %73
  %75 = lshr exact i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %25, ptr noundef %0, i32 noundef %76) #17
          to label %78 unwind label %92

78:                                               ; preds = %71
  %79 = shl i64 %74, 31
  %80 = ashr i64 %79, 32
  %81 = getelementptr inbounds i16, ptr %25, i64 %80
  store i16 0, ptr %81, align 2, !tbaa !64
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef nonnull %25, ptr noundef %31, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %1) #17
          to label %82 unwind label %92

82:                                               ; preds = %78
  %83 = xor i32 %76, -1
  %84 = add i32 %18, %83
  %85 = getelementptr inbounds i16, ptr %49, i64 1
  %86 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %37, ptr noundef nonnull %85, i32 noundef %84) #17
          to label %87 unwind label %94

87:                                               ; preds = %82
  %88 = sext i32 %84 to i64
  %89 = getelementptr inbounds i16, ptr %37, i64 %88
  store i16 0, ptr %89, align 2, !tbaa !64
  %90 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !97
  %91 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef nonnull %37, ptr noundef %90) #17
          to label %96 unwind label %94

92:                                               ; preds = %78, %71
  %93 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %155

94:                                               ; preds = %87, %82
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %155

96:                                               ; preds = %87, %52
  %97 = phi i32 [ 0, %52 ], [ %91, %87 ]
  %98 = load i32, ptr %7, align 4, !tbaa !101
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr %8, align 4
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  store <4 x i16> <i16 48, i16 46, i16 48, i16 69>, ptr %46, align 2, !tbaa !64
  %104 = getelementptr inbounds i16, ptr %46, i64 4
  store i16 48, ptr %104, align 2, !tbaa !64
  %105 = getelementptr inbounds i16, ptr %46, i64 5
  store i16 0, ptr %105, align 2, !tbaa !64
  br label %153

106:                                              ; preds = %96
  %107 = icmp eq i32 %98, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, ptr %46, i64 1
  store i16 45, ptr %46, align 2, !tbaa !64
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi ptr [ %109, %108 ], [ %46, %106 ]
  %112 = load i16, ptr %31, align 2, !tbaa !64
  %113 = getelementptr inbounds i16, ptr %111, i64 1
  store i16 %112, ptr %111, align 2, !tbaa !64
  %114 = getelementptr inbounds i16, ptr %111, i64 2
  store i16 46, ptr %113, align 2, !tbaa !64
  %115 = sext i32 %100 to i64
  %116 = getelementptr inbounds i16, ptr %31, i64 %115
  %117 = load i32, ptr %9, align 4, !tbaa !101
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110, %119
  %120 = phi ptr [ %121, %119 ], [ %116, %110 ]
  %121 = getelementptr inbounds i16, ptr %120, i64 -1
  %122 = load i16, ptr %121, align 2, !tbaa !64
  %123 = icmp eq i16 %122, 48
  br i1 %123, label %119, label %124, !llvm.loop !102

124:                                              ; preds = %119, %110
  %125 = phi ptr [ %116, %110 ], [ %120, %119 ]
  %126 = getelementptr inbounds i16, ptr %31, i64 1
  %127 = ptrtoint ptr %125 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = lshr exact i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %124
  %134 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %114, ptr noundef nonnull %126, i32 noundef %131) #17
          to label %135 unwind label %140

135:                                              ; preds = %133
  %136 = shl i64 %129, 31
  %137 = ashr i64 %136, 32
  %138 = getelementptr inbounds i16, ptr %114, i64 %137
  %139 = load i32, ptr %9, align 4, !tbaa !101
  br label %144

140:                                              ; preds = %151, %144, %133
  %141 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %155

142:                                              ; preds = %124
  %143 = getelementptr inbounds i16, ptr %111, i64 3
  store i16 48, ptr %114, align 2, !tbaa !64
  br label %144

144:                                              ; preds = %142, %135
  %145 = phi i32 [ %139, %135 ], [ %117, %142 ]
  %146 = phi ptr [ %138, %135 ], [ %143, %142 ]
  %147 = load i32, ptr %8, align 4, !tbaa !101
  %148 = xor i32 %145, -1
  %149 = add i32 %147, %97
  %150 = add i32 %149, %148
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %150, ptr noundef %37, i32 noundef %18, i32 noundef 10, ptr noundef nonnull %1) #17
          to label %151 unwind label %140

151:                                              ; preds = %144
  %152 = getelementptr inbounds i16, ptr %146, i64 1
  store i16 69, ptr %146, align 2, !tbaa !64
  store i16 0, ptr %152, align 2, !tbaa !64
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %46, ptr noundef %37) #17
          to label %153 unwind label %140

153:                                              ; preds = %151, %103
  %154 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorItE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br label %179

155:                                              ; preds = %92, %94, %140, %69
  %156 = phi { ptr, i32 } [ %141, %140 ], [ %70, %69 ], [ %95, %94 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  br label %157

157:                                              ; preds = %155, %67
  %158 = phi { ptr, i32 } [ %156, %155 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %159

159:                                              ; preds = %157, %65
  %160 = phi { ptr, i32 } [ %158, %157 ], [ %66, %65 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %161

161:                                              ; preds = %159, %63
  %162 = phi { ptr, i32 } [ %160, %159 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  br label %163

163:                                              ; preds = %161, %61
  %164 = phi { ptr, i32 } [ %162, %161 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %165

165:                                              ; preds = %163, %59
  %166 = phi { ptr, i32 } [ %164, %163 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %167

167:                                              ; preds = %165, %57
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %58, %57 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  br label %169

169:                                              ; preds = %167, %55
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br label %171

171:                                              ; preds = %169, %53
  %172 = phi { ptr, i32 } [ %170, %169 ], [ %54, %53 ]
  %173 = extractvalue { ptr, i32 } %172, 1
  %174 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #20
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = extractvalue { ptr, i32 } %172, 0
  %178 = call ptr @__cxa_begin_catch(ptr %177) #20
  call void @__cxa_end_catch()
  br label %179

179:                                              ; preds = %176, %153, %15
  %180 = phi ptr [ %16, %15 ], [ %46, %153 ], [ null, %176 ]
  ret ptr %180

181:                                              ; preds = %171
  resume { ptr, i32 } %172
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorItE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  store ptr null, ptr %0, align 8, !tbaa !70
  ret ptr %2
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #13 align 2 !prof !43 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !43 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat27classXMLAbstractDoubleFloatE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !43 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #17
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #17
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  br i1 %4, label %7, label %25

7:                                                ; preds = %2
  %8 = load double, ptr %5, align 8, !tbaa !47
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEd(ptr noundef nonnull align 8 dereferenceable(100) %1, double noundef %8) #17
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %11) #17
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 4, !tbaa !58, !range !95, !noundef !96
  %15 = icmp ne i8 %14, 0
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %15) #17
  %17 = load i8, ptr %6, align 1, !tbaa !59, !range !95, !noundef !96
  %18 = icmp ne i8 %17, 0
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %18) #17
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %21) #17
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %24, i32 noundef 0, i1 noundef zeroext false) #17
  br label %37

25:                                               ; preds = %2
  %26 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERd(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store i32 0, ptr %3, align 4, !tbaa !101
  %27 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %28 = load i32, ptr %3, align 4, !tbaa !101
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %31 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #17
  %32 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  %34 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %33) #17
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %35) #17
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  store ptr null, ptr %36, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %37

37:                                               ; preds = %25, %7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = load i16, ptr %0, align 8, !tbaa !103
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEd(ptr noundef nonnull align 8 dereferenceable(100), double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERd(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #17
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #17
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !109 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !94 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !110

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !111

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #17
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #24
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !72
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !90 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !112

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !112

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #17
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #24
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !91
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !93
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!36 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 27}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc, i64 27}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!40 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!41 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc, ptr @_ZdaPv, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !51, i64 8}
!48 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE", !49, i64 0, !51, i64 8, !53, i64 16, !54, i64 20, !54, i64 21, !55, i64 24, !56, i64 32, !56, i64 40, !56, i64 48}
!49 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !50, i64 0}
!50 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!51 = !{!"double", !52, i64 0}
!52 = !{!"omnipotent char", !46, i64 0}
!53 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloat11LiteralTypeE", !52, i64 0}
!54 = !{!"bool", !52, i64 0}
!55 = !{!"int", !52, i64 0}
!56 = !{!"any pointer", !52, i64 0}
!57 = !{!48, !53, i64 16}
!58 = !{!48, !54, i64 20}
!59 = !{!48, !54, i64 21}
!60 = !{!48, !55, i64 24}
!61 = !{!48, !56, i64 48}
!62 = !{!48, !56, i64 32}
!63 = !{!48, !56, i64 40}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !52, i64 0}
!66 = !{!52, !52, i64 0}
!67 = !{!"function_entry_count", i64 558789}
!68 = !{!"branch_weights", i32 158605, i32 400186}
!69 = !{!"function_entry_count", i64 52059}
!70 = !{!71, !56, i64 0}
!71 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !56, i64 0, !56, i64 8}
!72 = !{!71, !56, i64 8}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"function_entry_count", i64 1231717351}
!76 = !{!"branch_weights", i32 621, i32 -1469098093}
!77 = !{!"branch_weights", i32 408901017, i32 1}
!78 = !{!"branch_weights", i32 267, i32 4}
!79 = !{!"branch_weights", i32 1, i32 4}
!80 = !{!"branch_weights", i32 156, i32 112}
!81 = !{!"branch_weights", i32 1, i32 112}
!82 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!83 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!84 = distinct !{!84, !74}
!85 = !{!"function_entry_count", i64 2453164456}
!86 = !{!"branch_weights", i32 1, i32 -1841802839}
!87 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!88 = !{!"branch_weights", i32 408669070, i32 -279908794}
!89 = distinct !{!89, !74}
!90 = !{!"function_entry_count", i64 27}
!91 = !{!92, !56, i64 0}
!92 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIcEE", !56, i64 0, !56, i64 8}
!93 = !{!92, !56, i64 8}
!94 = !{!"function_entry_count", i64 243874}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!56, !56, i64 0}
!98 = !{i32 -1, i32 3}
!99 = !{!100, !56, i64 0}
!100 = !{!"_ZTS5lconv", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !52, i64 80, !52, i64 81, !52, i64 82, !52, i64 83, !52, i64 84, !52, i64 85, !52, i64 86, !52, i64 87, !52, i64 88, !52, i64 89, !52, i64 90, !52, i64 91, !52, i64 92, !52, i64 93}
!101 = !{!55, !55, i64 0}
!102 = distinct !{!102, !74}
!103 = !{!104, !65, i64 0}
!104 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !65, i64 0, !65, i64 2, !56, i64 8, !56, i64 16, !56, i64 24, !105, i64 32, !105, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !55, i64 96}
!105 = !{!"long", !52, i64 0}
!106 = !{!107, !56, i64 40}
!107 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !108, i64 8, !56, i64 16, !55, i64 24, !56, i64 32, !56, i64 40}
!108 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !52, i64 0}
!109 = !{!"function_entry_count", i64 5836268}
!110 = !{!"branch_weights", i32 191816, i32 52060}
!111 = !{!"branch_weights", i32 1, i32 52060}
!112 = !{!"branch_weights", i32 1, i32 28}
