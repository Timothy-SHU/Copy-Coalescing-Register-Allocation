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

$_ZN11xercesc_2_712ArrayJanitorIcED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_722XMLAbstractDoubleFloatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 4, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 4, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 0, ptr %6, align 1, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !52
  ret void
}

declare void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_722XMLAbstractDoubleFloatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !52
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = load ptr, ptr %10, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat4initEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca [101 x i8], align 16
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2, !tbaa !55
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7, %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 261, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #18
  br label %181

17:                                               ; preds = %7
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %1, %17 ], [ %22, %20 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !55
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %20, !llvm.loop !57

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i64
  %27 = ptrtoint ptr %1 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, 2
  %30 = and i64 %29, 8589934590
  %31 = load ptr, ptr %19, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %30)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr nonnull align 2 %1, i64 %30, i1 false)
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !53
  %36 = load ptr, ptr %18, align 8, !tbaa !52
  %37 = load i16, ptr %1, align 2, !tbaa !55
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %25, %39
  %40 = phi ptr [ %41, %39 ], [ %1, %25 ]
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !55
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %39, !llvm.loop !57

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = sub i64 %45, %27
  %47 = add i64 %46, 2
  %48 = and i64 %47, 8589934590
  br label %49

49:                                               ; preds = %44, %25
  %50 = phi i64 [ %48, %44 ], [ 2, %25 ]
  %51 = load ptr, ptr %36, align 8, !tbaa !35
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %50)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %54, ptr nonnull align 2 %1, i64 %50, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %55 = load ptr, ptr %18, align 8, !tbaa !52
  store ptr %54, ptr %3, align 8, !tbaa !60
  %56 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %54)
          to label %57 unwind label %64

57:                                               ; preds = %49
  %58 = load i16, ptr %54, align 2, !tbaa !55
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %62 = load ptr, ptr %18, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 261, ptr noundef %62)
          to label %63 unwind label %66

63:                                               ; preds = %60
  invoke void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %183 unwind label %64

64:                                               ; preds = %68, %63, %49
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %179

66:                                               ; preds = %60
  %67 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %61) #18
  br label %179

68:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_722XMLAbstractDoubleFloat13normalizeZeroEPt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %54)
          to label %69 unwind label %64

69:                                               ; preds = %68
  %70 = load i16, ptr %54, align 2, !tbaa !55
  %71 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgNegINFStringE, align 2, !tbaa !55
  %72 = icmp eq i16 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %82, %69
  %74 = load i16, ptr %54, align 2, !tbaa !55
  %75 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgPosINFStringE, align 2, !tbaa !55
  %76 = icmp eq i16 %74, %75
  br i1 %76, label %95, label %91

77:                                               ; preds = %69, %82
  %78 = phi i16 [ %85, %82 ], [ %70, %69 ]
  %79 = phi ptr [ %84, %82 ], [ @_ZN11xercesc_2_76XMLUni14fgNegINFStringE, %69 ]
  %80 = phi ptr [ %83, %82 ], [ %54, %69 ]
  %81 = icmp eq i16 %78, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds i16, ptr %80, i64 1
  %84 = getelementptr inbounds i16, ptr %79, i64 1
  %85 = load i16, ptr %83, align 2, !tbaa !55
  %86 = load i16, ptr %84, align 2, !tbaa !55
  %87 = icmp eq i16 %85, %86
  br i1 %87, label %77, label %73, !llvm.loop !63

88:                                               ; preds = %77
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 0, ptr %89, align 8, !tbaa !48
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 -1, ptr %90, align 8, !tbaa !51
  br label %178

91:                                               ; preds = %100, %73
  %92 = load i16, ptr %54, align 2, !tbaa !55
  %93 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgNaNStringE, align 2, !tbaa !55
  %94 = icmp eq i16 %92, %93
  br i1 %94, label %109, label %123

95:                                               ; preds = %73, %100
  %96 = phi i16 [ %103, %100 ], [ %74, %73 ]
  %97 = phi ptr [ %102, %100 ], [ @_ZN11xercesc_2_76XMLUni14fgPosINFStringE, %73 ]
  %98 = phi ptr [ %101, %100 ], [ %54, %73 ]
  %99 = icmp eq i16 %96, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i16, ptr %98, i64 1
  %102 = getelementptr inbounds i16, ptr %97, i64 1
  %103 = load i16, ptr %101, align 2, !tbaa !55
  %104 = load i16, ptr %102, align 2, !tbaa !55
  %105 = icmp eq i16 %103, %104
  br i1 %105, label %95, label %91, !llvm.loop !63

106:                                              ; preds = %95
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 1, ptr %107, align 8, !tbaa !48
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 1, ptr %108, align 8, !tbaa !51
  br label %178

109:                                              ; preds = %91, %114
  %110 = phi i16 [ %117, %114 ], [ %92, %91 ]
  %111 = phi ptr [ %116, %114 ], [ @_ZN11xercesc_2_76XMLUni11fgNaNStringE, %91 ]
  %112 = phi ptr [ %115, %114 ], [ %54, %91 ]
  %113 = icmp eq i16 %110, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds i16, ptr %112, i64 1
  %116 = getelementptr inbounds i16, ptr %111, i64 1
  %117 = load i16, ptr %115, align 2, !tbaa !55
  %118 = load i16, ptr %116, align 2, !tbaa !55
  %119 = icmp eq i16 %117, %118
  br i1 %119, label %109, label %123, !llvm.loop !63

120:                                              ; preds = %109
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 2, ptr %121, align 8, !tbaa !48
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 1, ptr %122, align 8, !tbaa !51
  br label %178

123:                                              ; preds = %114, %91
  %124 = load i16, ptr %54, align 2, !tbaa !55
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %128, %126 ], [ %54, %123 ]
  %128 = getelementptr inbounds i16, ptr %127, i64 1
  %129 = load i16, ptr %128, align 2, !tbaa !55
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %126, !llvm.loop !57

131:                                              ; preds = %126
  %132 = ptrtoint ptr %128 to i64
  %133 = ptrtoint ptr %54 to i64
  %134 = sub i64 %132, %133
  %135 = lshr exact i64 %134, 1
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %123, %131
  %138 = phi i32 [ %136, %131 ], [ 0, %123 ]
  %139 = icmp ult i32 %138, 100
  br i1 %139, label %140, label %164

140:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %4) #18
  %141 = load ptr, ptr %18, align 8, !tbaa !52
  %142 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef nonnull %54, ptr noundef nonnull %4, i32 noundef 100, ptr noundef %141)
          to label %143 unwind label %153

143:                                              ; preds = %140
  %144 = getelementptr inbounds [101 x i8], ptr %4, i64 0, i64 100
  store i8 0, ptr %144, align 4, !tbaa !64
  %145 = invoke noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %4)
          to label %146 unwind label %153

146:                                              ; preds = %143
  %147 = icmp eq i32 %145, %138
  br i1 %147, label %157, label %148

148:                                              ; preds = %146
  %149 = call ptr @__cxa_allocate_exception(i64 48) #18
  %150 = load ptr, ptr %18, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %149, ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 264, ptr noundef %150)
          to label %151 unwind label %155

151:                                              ; preds = %148
  invoke void @__cxa_throw(ptr nonnull %149, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
          to label %152 unwind label %153

152:                                              ; preds = %151
  unreachable

153:                                              ; preds = %157, %151, %143, %140
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %162

155:                                              ; preds = %148
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %149) #18
  br label %162

157:                                              ; preds = %146
  %158 = load ptr, ptr %0, align 8, !tbaa !35
  %159 = getelementptr inbounds ptr, ptr %158, i64 9
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %4)
          to label %161 unwind label %153

161:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %4) #18
  br label %178

162:                                              ; preds = %155, %153
  %163 = phi { ptr, i32 } [ %154, %153 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %4) #18
  br label %179

164:                                              ; preds = %137
  %165 = load ptr, ptr %18, align 8, !tbaa !52
  %166 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef nonnull %54, ptr noundef %165)
          to label %167 unwind label %174

167:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %168 = load ptr, ptr %18, align 8, !tbaa !52
  store ptr %166, ptr %5, align 8, !tbaa !65
  %169 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %5, i64 0, i32 1
  store ptr %168, ptr %169, align 8, !tbaa !67
  %170 = load ptr, ptr %0, align 8, !tbaa !35
  %171 = getelementptr inbounds ptr, ptr %170, i64 9
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %166)
          to label %173 unwind label %176

173:                                              ; preds = %167
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %178

174:                                              ; preds = %164
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %179

176:                                              ; preds = %167
  %177 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %179

178:                                              ; preds = %161, %173, %106, %120, %88
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void

179:                                              ; preds = %162, %176, %174, %66, %64
  %180 = phi { ptr, i32 } [ %65, %64 ], [ %67, %66 ], [ %163, %162 ], [ %177, %176 ], [ %175, %174 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %181

181:                                              ; preds = %179, %15
  %182 = phi { ptr, i32 } [ %180, %179 ], [ %16, %15 ]
  resume { ptr, i32 } %182

183:                                              ; preds = %63
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat13normalizeZeroEPt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !55
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %1, align 2, !tbaa !55
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgNegZeroStringE, align 2, !tbaa !55
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %20, %7
  %12 = load i16, ptr %1, align 2, !tbaa !55
  %13 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE, align 2, !tbaa !55
  %14 = icmp eq i16 %12, %13
  br i1 %14, label %26, label %37

15:                                               ; preds = %7, %20
  %16 = phi i16 [ %23, %20 ], [ %8, %7 ]
  %17 = phi ptr [ %22, %20 ], [ @_ZN11xercesc_2_76XMLUni15fgNegZeroStringE, %7 ]
  %18 = phi ptr [ %21, %20 ], [ %1, %7 ]
  %19 = icmp eq i16 %16, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds i16, ptr %18, i64 1
  %22 = getelementptr inbounds i16, ptr %17, i64 1
  %23 = load i16, ptr %21, align 2, !tbaa !55
  %24 = load i16, ptr %22, align 2, !tbaa !55
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %15, label %11, !llvm.loop !63

26:                                               ; preds = %11, %31
  %27 = phi i16 [ %34, %31 ], [ %12, %11 ]
  %28 = phi ptr [ %33, %31 ], [ @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE, %11 ]
  %29 = phi ptr [ %32, %31 ], [ %1, %11 ]
  %30 = icmp eq i16 %27, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds i16, ptr %29, i64 1
  %33 = getelementptr inbounds i16, ptr %28, i64 1
  %34 = load i16, ptr %32, align 2, !tbaa !55
  %35 = load i16, ptr %33, align 2, !tbaa !55
  %36 = icmp eq i16 %34, %35
  br i1 %36, label %26, label %37, !llvm.loop !63

37:                                               ; preds = %31, %11
  %38 = icmp eq i16 %5, 45
  %39 = icmp eq i16 %5, 43
  %40 = or i1 %38, %39
  %41 = zext i1 %40 to i64
  %42 = getelementptr inbounds i16, ptr %1, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !55
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %37, %57
  %46 = phi i16 [ %60, %57 ], [ %43, %37 ]
  %47 = phi ptr [ %50, %57 ], [ %42, %37 ]
  %48 = phi i8 [ %59, %57 ], [ 1, %37 ]
  %49 = phi i8 [ %58, %57 ], [ 0, %37 ]
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  switch i16 %46, label %57 [
    i16 46, label %51
    i16 48, label %56
  ]

51:                                               ; preds = %45
  %52 = and i8 %49, 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i8 1, i8 %49
  %55 = select i1 %53, i8 %48, i8 0
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %51, %45, %56
  %58 = phi i8 [ %49, %45 ], [ %49, %56 ], [ %54, %51 ]
  %59 = phi i8 [ 0, %45 ], [ %48, %56 ], [ %55, %51 ]
  %60 = load i16, ptr %50, align 2, !tbaa !55
  %61 = icmp ne i16 %60, 0
  %62 = and i8 %59, 1
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %45, label %65, !llvm.loop !68

65:                                               ; preds = %57
  br i1 %63, label %66, label %69

66:                                               ; preds = %37, %65
  br i1 %38, label %67, label %68

67:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNegZeroStringE)
  br label %72

68:                                               ; preds = %66
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE)
  br label %72

69:                                               ; preds = %65
  %70 = select i1 %38, i32 -1, i32 1
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  store i32 %70, ptr %71, align 8, !tbaa !51
  br label %72

72:                                               ; preds = %15, %26, %69, %68, %67, %2, %4
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKtPcjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !70

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !70

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !71

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !73

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !74

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !75

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %3)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #9 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 4, !tbaa !49, !range !76, !noundef !77
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %12

12:                                               ; preds = %7, %11, %5
  %13 = phi ptr [ %6, %5 ], [ %8, %11 ], [ %8, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !55
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %3, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !55
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !57

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %3 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %1, %5, %13
  %20 = phi i32 [ %18, %13 ], [ 0, %5 ], [ 0, %1 ]
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = add i32 %20, 8
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 1
  %26 = load ptr, ptr %22, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %25)
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  store ptr %29, ptr %30, align 8, !tbaa !54
  %31 = icmp eq i32 %23, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = zext i32 %23 to i64
  %34 = shl nuw nsw i64 %33, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %29, i8 0, i64 %34, i1 false), !tbaa !55
  br label %35

35:                                               ; preds = %32, %19
  %36 = load ptr, ptr %2, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %29, ptr noundef %36)
  %37 = load ptr, ptr %30, align 8, !tbaa !54
  %38 = zext i32 %20 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  store i16 32, ptr %39, align 2, !tbaa !55
  %40 = add i32 %20, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %37, i64 %41
  store i16 40, ptr %42, align 2, !tbaa !55
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !48
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZN11xercesc_2_722XMLAbstractDoubleFloat12formatStringEv, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %35, %46
  %51 = phi ptr [ %49, %46 ], [ @_ZN11xercesc_2_76XMLUni15fgPosZeroStringE, %35 ]
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef %37, ptr noundef nonnull %51)
  %52 = load ptr, ptr %30, align 8, !tbaa !54
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = load i16, ptr %52, align 2, !tbaa !55
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %59, %57 ], [ %52, %54 ]
  %59 = getelementptr inbounds i16, ptr %58, i64 1
  %60 = load i16, ptr %59, align 2, !tbaa !55
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %57, !llvm.loop !57

62:                                               ; preds = %57
  %63 = ptrtoint ptr %59 to i64
  %64 = ptrtoint ptr %52 to i64
  %65 = sub i64 %63, %64
  %66 = lshr exact i64 %65, 1
  %67 = and i64 %66, 4294967295
  br label %68

68:                                               ; preds = %50, %54, %62
  %69 = phi i64 [ %67, %62 ], [ 0, %54 ], [ 0, %50 ]
  %70 = getelementptr inbounds i16, ptr %52, i64 %69
  store i16 41, ptr %70, align 2, !tbaa !55
  ret void
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #9 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !51
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %1, i64 0, i32 1
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fcmp oeq double %13, %15
  br i1 %16, label %44, label %17

17:                                               ; preds = %11
  %18 = fcmp ogt double %13, %15
  %19 = select i1 %18, i32 1, i32 -1
  br label %44

20:                                               ; preds = %7
  br i1 %6, label %21, label %41

21:                                               ; preds = %3, %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = icmp eq i32 %5, %23
  br i1 %26, label %44, label %27

27:                                               ; preds = %25
  %28 = icmp eq i32 %5, 2
  %29 = icmp eq i32 %23, 2
  %30 = or i1 %28, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %5, %23
  %33 = select i1 %32, i32 1, i32 -1
  br label %44

34:                                               ; preds = %21
  br i1 %6, label %35, label %41

35:                                               ; preds = %34
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !48
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %2), !range !79
  br label %44

41:                                               ; preds = %20, %35, %34
  %42 = tail call noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2), !range !79
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %27, %25, %11, %41, %39, %31, %17
  %45 = phi i32 [ %33, %31 ], [ %43, %41 ], [ %40, %39 ], [ %19, %17 ], [ 0, %11 ], [ 0, %25 ], [ 2, %27 ]
  ret i32 %45
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [65 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %5, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %1)
  %8 = call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 330, i32 noundef 280, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #18
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #18
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr inbounds [3 x i32], ptr @switch.table._ZN11xercesc_2_722XMLAbstractDoubleFloat14compareSpecialEPKS0_PNS_13MemoryManagerE, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  ret i32 %15
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat21normalizeDecimalPointEPc(ptr noundef %0) local_unnamed_addr #2 align 2 !prof !34 {
  %2 = tail call ptr @localeconv() #18
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = load i8, ptr %3, align 1, !tbaa !64
  %5 = icmp eq i8 %4, 46
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i8 %4, ptr %7, align 1, !tbaa !64
  br label %10

10:                                               ; preds = %6, %9, %1
  ret void
}

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat7convertEPc(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @localeconv() #18
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = load i8, ptr %5, align 1, !tbaa !64
  %7 = icmp eq i8 %6, 46
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i8 %6, ptr %9, align 1, !tbaa !64
  br label %12

12:                                               ; preds = %2, %8, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !78
  %13 = tail call ptr @__errno_location() #23
  store i32 0, ptr %13, align 4, !tbaa !82
  %14 = call double @strtod(ptr noundef %1, ptr noundef nonnull %3) #18
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  store double %14, ptr %15, align 8, !tbaa !38
  %16 = load ptr, ptr %3, align 8, !tbaa !78
  %17 = load i8, ptr %16, align 1, !tbaa !64
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 440, i32 noundef 264, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #20
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  resume { ptr, i32 } %25

26:                                               ; preds = %12
  %27 = load i32, ptr %13, align 4, !tbaa !82
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  store i8 1, ptr %30, align 4, !tbaa !49
  %31 = fcmp olt double %14, 0.000000e+00
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = fcmp ogt double %14, 0x8010000000000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  store double 0.000000e+00, ptr %15, align 8, !tbaa !38
  br label %46

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 0, ptr %36, align 8, !tbaa !48
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 1, ptr %37, align 1, !tbaa !50
  br label %46

38:                                               ; preds = %29
  %39 = fcmp ogt double %14, 0.000000e+00
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = fcmp olt double %14, 0x10000000000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store double 0.000000e+00, ptr %15, align 8, !tbaa !38
  br label %46

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 1, ptr %44, align 8, !tbaa !48
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 1, ptr %45, align 1, !tbaa !50
  br label %46

46:                                               ; preds = %35, %34, %42, %43, %38, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i16, ptr %0, align 2, !tbaa !55
  %13 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgNegINFStringE, align 2, !tbaa !55
  %14 = icmp eq i16 %12, %13
  br i1 %14, label %18, label %29

15:                                               ; preds = %2
  %16 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgNegINFStringE, align 2, !tbaa !55
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %67, label %29

18:                                               ; preds = %11, %23
  %19 = phi i16 [ %26, %23 ], [ %12, %11 ]
  %20 = phi ptr [ %25, %23 ], [ @_ZN11xercesc_2_76XMLUni14fgNegINFStringE, %11 ]
  %21 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %22 = icmp eq i16 %19, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i16, ptr %21, i64 1
  %25 = getelementptr inbounds i16, ptr %20, i64 1
  %26 = load i16, ptr %24, align 2, !tbaa !55
  %27 = load i16, ptr %25, align 2, !tbaa !55
  %28 = icmp eq i16 %26, %27
  br i1 %28, label %18, label %29, !llvm.loop !63

29:                                               ; preds = %23, %11, %15
  br i1 %10, label %34, label %30

30:                                               ; preds = %29
  %31 = load i16, ptr %0, align 2, !tbaa !55
  %32 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgPosINFStringE, align 2, !tbaa !55
  %33 = icmp eq i16 %31, %32
  br i1 %33, label %37, label %48

34:                                               ; preds = %29
  %35 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgPosINFStringE, align 2, !tbaa !55
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %67, label %48

37:                                               ; preds = %30, %42
  %38 = phi i16 [ %45, %42 ], [ %31, %30 ]
  %39 = phi ptr [ %44, %42 ], [ @_ZN11xercesc_2_76XMLUni14fgPosINFStringE, %30 ]
  %40 = phi ptr [ %43, %42 ], [ %0, %30 ]
  %41 = icmp eq i16 %38, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds i16, ptr %40, i64 1
  %44 = getelementptr inbounds i16, ptr %39, i64 1
  %45 = load i16, ptr %43, align 2, !tbaa !55
  %46 = load i16, ptr %44, align 2, !tbaa !55
  %47 = icmp eq i16 %45, %46
  br i1 %47, label %37, label %48, !llvm.loop !63

48:                                               ; preds = %42, %30, %34
  br i1 %10, label %53, label %49

49:                                               ; preds = %48
  %50 = load i16, ptr %0, align 2, !tbaa !55
  %51 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgNaNStringE, align 2, !tbaa !55
  %52 = icmp eq i16 %50, %51
  br i1 %52, label %56, label %88

53:                                               ; preds = %48
  %54 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgNaNStringE, align 2, !tbaa !55
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %67, label %88

56:                                               ; preds = %49, %61
  %57 = phi i16 [ %64, %61 ], [ %50, %49 ]
  %58 = phi ptr [ %63, %61 ], [ @_ZN11xercesc_2_76XMLUni11fgNaNStringE, %49 ]
  %59 = phi ptr [ %62, %61 ], [ %0, %49 ]
  %60 = icmp eq i16 %57, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  %63 = getelementptr inbounds i16, ptr %58, i64 1
  %64 = load i16, ptr %62, align 2, !tbaa !55
  %65 = load i16, ptr %63, align 2, !tbaa !55
  %66 = icmp eq i16 %64, %65
  br i1 %66, label %56, label %88, !llvm.loop !63

67:                                               ; preds = %18, %37, %56, %53, %34, %15
  br i1 %10, label %250, label %68

68:                                               ; preds = %67
  %69 = load i16, ptr %0, align 2, !tbaa !55
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %73, %71 ], [ %0, %68 ]
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = load i16, ptr %73, align 2, !tbaa !55
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %71, !llvm.loop !57

76:                                               ; preds = %71
  %77 = ptrtoint ptr %73 to i64
  %78 = ptrtoint ptr %0 to i64
  %79 = sub i64 %77, %78
  %80 = add i64 %79, 2
  %81 = and i64 %80, 8589934590
  br label %82

82:                                               ; preds = %76, %68
  %83 = phi i64 [ %81, %76 ], [ 2, %68 ]
  %84 = load ptr, ptr %1, align 8, !tbaa !35
  %85 = getelementptr inbounds ptr, ptr %84, i64 2
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %83)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %87, ptr nonnull align 2 %0, i64 %83, i1 false)
  br label %250

88:                                               ; preds = %61, %49, %53
  br i1 %10, label %103, label %89

89:                                               ; preds = %88
  %90 = load i16, ptr %0, align 2, !tbaa !55
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %89, %92
  %93 = phi ptr [ %94, %92 ], [ %0, %89 ]
  %94 = getelementptr inbounds i16, ptr %93, i64 1
  %95 = load i16, ptr %94, align 2, !tbaa !55
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %92, !llvm.loop !57

97:                                               ; preds = %92
  %98 = ptrtoint ptr %94 to i64
  %99 = ptrtoint ptr %0 to i64
  %100 = sub i64 %98, %99
  %101 = lshr exact i64 %100, 1
  %102 = trunc i64 %101 to i32
  br label %103

103:                                              ; preds = %88, %89, %97
  %104 = phi i32 [ %102, %97 ], [ 0, %89 ], [ 0, %88 ]
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = shl nsw i64 %106, 1
  %108 = load ptr, ptr %1, align 8, !tbaa !35
  %109 = getelementptr inbounds ptr, ptr %108, i64 2
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %107)
          to label %112 unwind label %139

112:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  store ptr %111, ptr %3, align 8, !tbaa !60
  %113 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %1, ptr %113, align 8, !tbaa !62
  %114 = load ptr, ptr %1, align 8, !tbaa !35
  %115 = getelementptr inbounds ptr, ptr %114, i64 2
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %107)
          to label %118 unwind label %141

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  store ptr %117, ptr %4, align 8, !tbaa !60
  %119 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %1, ptr %119, align 8, !tbaa !62
  %120 = load ptr, ptr %1, align 8, !tbaa !35
  %121 = getelementptr inbounds ptr, ptr %120, i64 2
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %107)
          to label %124 unwind label %143

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  store ptr %123, ptr %5, align 8, !tbaa !60
  %125 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %1, ptr %125, align 8, !tbaa !62
  %126 = add nsw i32 %104, 8
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 1
  %129 = load ptr, ptr %1, align 8, !tbaa !35
  %130 = getelementptr inbounds ptr, ptr %129, i64 2
  %131 = load ptr, ptr %130, align 8
  %132 = invoke noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %128)
          to label %133 unwind label %145

133:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  store ptr %132, ptr %6, align 8, !tbaa !60
  %134 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %1, ptr %134, align 8, !tbaa !62
  store i16 0, ptr %132, align 2, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %135 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L7expSignE)
          to label %136 unwind label %147

136:                                              ; preds = %133
  %137 = icmp eq ptr %135, null
  br i1 %137, label %138, label %149

138:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %117, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %1)
          to label %174 unwind label %147

139:                                              ; preds = %103
  %140 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %242

141:                                              ; preds = %112
  %142 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %240

143:                                              ; preds = %118
  %144 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %238

145:                                              ; preds = %124
  %146 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %236

147:                                              ; preds = %138, %133
  %148 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %234

149:                                              ; preds = %136
  %150 = ptrtoint ptr %135 to i64
  %151 = ptrtoint ptr %0 to i64
  %152 = sub i64 %150, %151
  %153 = lshr exact i64 %152, 1
  %154 = trunc i64 %153 to i32
  %155 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %111, ptr noundef %0, i32 noundef %154)
          to label %156 unwind label %170

156:                                              ; preds = %149
  %157 = shl i64 %152, 31
  %158 = ashr i64 %157, 32
  %159 = getelementptr inbounds i16, ptr %111, i64 %158
  store i16 0, ptr %159, align 2, !tbaa !55
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef %111, ptr noundef %117, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %1)
          to label %160 unwind label %170

160:                                              ; preds = %156
  %161 = xor i32 %154, -1
  %162 = add i32 %104, %161
  %163 = getelementptr inbounds i16, ptr %135, i64 1
  %164 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %123, ptr noundef nonnull %163, i32 noundef %162)
          to label %165 unwind label %172

165:                                              ; preds = %160
  %166 = sext i32 %162 to i64
  %167 = getelementptr inbounds i16, ptr %123, i64 %166
  store i16 0, ptr %167, align 2, !tbaa !55
  %168 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !78
  %169 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef %123, ptr noundef %168)
          to label %174 unwind label %172

170:                                              ; preds = %156, %149
  %171 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %234

172:                                              ; preds = %165, %160
  %173 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %234

174:                                              ; preds = %165, %138
  %175 = phi i32 [ 0, %138 ], [ %169, %165 ]
  %176 = load i32, ptr %7, align 4, !tbaa !82
  %177 = icmp eq i32 %176, 0
  %178 = load i32, ptr %8, align 4
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %177, i1 true, i1 %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  store i16 48, ptr %132, align 2, !tbaa !55
  %182 = getelementptr inbounds i16, ptr %132, i64 1
  store i16 46, ptr %182, align 2, !tbaa !55
  %183 = getelementptr inbounds i16, ptr %132, i64 2
  store i16 48, ptr %183, align 2, !tbaa !55
  %184 = getelementptr inbounds i16, ptr %132, i64 3
  store i16 69, ptr %184, align 2, !tbaa !55
  %185 = getelementptr inbounds i16, ptr %132, i64 4
  store i16 48, ptr %185, align 2, !tbaa !55
  %186 = getelementptr inbounds i16, ptr %132, i64 5
  store i16 0, ptr %186, align 2, !tbaa !55
  br label %233

187:                                              ; preds = %174
  %188 = icmp eq i32 %176, -1
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = getelementptr inbounds i16, ptr %132, i64 1
  store i16 45, ptr %132, align 2, !tbaa !55
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi ptr [ %190, %189 ], [ %132, %187 ]
  %193 = load i16, ptr %117, align 2, !tbaa !55
  %194 = getelementptr inbounds i16, ptr %192, i64 1
  store i16 %193, ptr %192, align 2, !tbaa !55
  %195 = getelementptr inbounds i16, ptr %192, i64 2
  store i16 46, ptr %194, align 2, !tbaa !55
  %196 = sext i32 %178 to i64
  %197 = getelementptr inbounds i16, ptr %117, i64 %196
  %198 = load i32, ptr %9, align 4, !tbaa !82
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %191, %200
  %201 = phi ptr [ %202, %200 ], [ %197, %191 ]
  %202 = getelementptr inbounds i16, ptr %201, i64 -1
  %203 = load i16, ptr %202, align 2, !tbaa !55
  %204 = icmp eq i16 %203, 48
  br i1 %204, label %200, label %205, !llvm.loop !83

205:                                              ; preds = %200, %191
  %206 = phi ptr [ %197, %191 ], [ %201, %200 ]
  %207 = getelementptr inbounds i16, ptr %117, i64 1
  %208 = ptrtoint ptr %206 to i64
  %209 = ptrtoint ptr %207 to i64
  %210 = sub i64 %208, %209
  %211 = lshr exact i64 %210, 1
  %212 = trunc i64 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %205
  %215 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %195, ptr noundef nonnull %207, i32 noundef %212)
          to label %216 unwind label %220

216:                                              ; preds = %214
  %217 = shl i64 %210, 31
  %218 = ashr i64 %217, 32
  %219 = getelementptr inbounds i16, ptr %195, i64 %218
  br label %224

220:                                              ; preds = %231, %224, %214
  %221 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %234

222:                                              ; preds = %205
  %223 = getelementptr inbounds i16, ptr %192, i64 3
  store i16 48, ptr %195, align 2, !tbaa !55
  br label %224

224:                                              ; preds = %222, %216
  %225 = phi ptr [ %219, %216 ], [ %223, %222 ]
  %226 = load i32, ptr %8, align 4, !tbaa !82
  %227 = load i32, ptr %9, align 4, !tbaa !82
  %228 = xor i32 %227, -1
  %229 = add i32 %226, %175
  %230 = add i32 %229, %228
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %230, ptr noundef %123, i32 noundef %104, i32 noundef 10, ptr noundef nonnull %1)
          to label %231 unwind label %220

231:                                              ; preds = %224
  %232 = getelementptr inbounds i16, ptr %225, i64 1
  store i16 69, ptr %225, align 2, !tbaa !55
  store i16 0, ptr %232, align 2, !tbaa !55
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %132, ptr noundef %123)
          to label %233 unwind label %220

233:                                              ; preds = %231, %181
  store ptr null, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %250

234:                                              ; preds = %170, %172, %220, %147
  %235 = phi { ptr, i32 } [ %221, %220 ], [ %148, %147 ], [ %173, %172 ], [ %171, %170 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %236

236:                                              ; preds = %234, %145
  %237 = phi { ptr, i32 } [ %235, %234 ], [ %146, %145 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %238

238:                                              ; preds = %236, %143
  %239 = phi { ptr, i32 } [ %237, %236 ], [ %144, %143 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %240

240:                                              ; preds = %238, %141
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %142, %141 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %242

242:                                              ; preds = %240, %139
  %243 = phi { ptr, i32 } [ %241, %240 ], [ %140, %139 ]
  %244 = extractvalue { ptr, i32 } %243, 1
  %245 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #18
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = extractvalue { ptr, i32 } %243, 0
  %249 = call ptr @__cxa_begin_catch(ptr %248) #18
  call void @__cxa_end_catch()
  br label %250

250:                                              ; preds = %82, %67, %247, %233
  %251 = phi ptr [ %132, %233 ], [ null, %247 ], [ %87, %82 ], [ null, %67 ]
  ret ptr %251

252:                                              ; preds = %242
  resume { ptr, i32 } %243
}

declare noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPtRiS4_S4_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #14 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #14 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #14 align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat27classXMLAbstractDoubleFloatE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %6 = load i16, ptr %1, align 8, !tbaa !84
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  br i1 %7, label %10, label %28

10:                                               ; preds = %2
  %11 = load double, ptr %8, align 8, !tbaa !38
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEd(ptr noundef nonnull align 8 dereferenceable(100) %1, double noundef %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %17 = load i8, ptr %16, align 4, !tbaa !49, !range !76, !noundef !77
  %18 = icmp ne i8 %17, 0
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %18)
  %20 = load i8, ptr %9, align 1, !tbaa !50, !range !76, !noundef !77
  %21 = icmp ne i8 %20, 0
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %21)
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %24)
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %27, i32 noundef 0, i1 noundef zeroext false)
  br label %40

28:                                               ; preds = %2
  %29 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERd(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !tbaa !82
  %30 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %31 = load i32, ptr %5, align 4, !tbaa !82
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 %31, ptr %32, align 8, !tbaa !48
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %34 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %33)
  %35 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 5
  %37 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %36)
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 7
  store ptr null, ptr %39, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %40

40:                                               ; preds = %28, %10
  ret void
}

declare void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEd(ptr noundef nonnull align 8 dereferenceable(100), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERd(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind willreturn memory(none) }

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
!38 = !{!39, !42, i64 8}
!39 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE", !40, i64 0, !42, i64 8, !44, i64 16, !45, i64 20, !45, i64 21, !46, i64 24, !47, i64 32, !47, i64 40, !47, i64 48}
!40 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !41, i64 0}
!41 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloat11LiteralTypeE", !43, i64 0}
!45 = !{!"bool", !43, i64 0}
!46 = !{!"int", !43, i64 0}
!47 = !{!"any pointer", !43, i64 0}
!48 = !{!39, !44, i64 16}
!49 = !{!39, !45, i64 20}
!50 = !{!39, !45, i64 21}
!51 = !{!39, !46, i64 24}
!52 = !{!39, !47, i64 48}
!53 = !{!39, !47, i64 32}
!54 = !{!39, !47, i64 40}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !43, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!61, !47, i64 0}
!61 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !47, i64 0, !47, i64 8}
!62 = !{!61, !47, i64 8}
!63 = distinct !{!63, !58, !59}
!64 = !{!43, !43, i64 0}
!65 = !{!66, !47, i64 0}
!66 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIcEE", !47, i64 0, !47, i64 8}
!67 = !{!66, !47, i64 8}
!68 = distinct !{!68, !58, !59}
!69 = !{!"function_entry_count", i64 27}
!70 = !{!"branch_weights", i32 0, i32 27}
!71 = !{!"VP", i32 0, i64 27, i64 -7405368087501025645, i64 27}
!72 = !{!"function_entry_count", i64 243874}
!73 = !{!"branch_weights", i32 191815, i32 52059}
!74 = !{!"branch_weights", i32 0, i32 52059}
!75 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!47, !47, i64 0}
!79 = !{i32 -1, i32 3}
!80 = !{!81, !47, i64 0}
!81 = !{!"_ZTS5lconv", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !43, i64 80, !43, i64 81, !43, i64 82, !43, i64 83, !43, i64 84, !43, i64 85, !43, i64 86, !43, i64 87, !43, i64 88, !43, i64 89, !43, i64 90, !43, i64 91, !43, i64 92, !43, i64 93}
!82 = !{!46, !46, i64 0}
!83 = distinct !{!83, !58, !59}
!84 = !{!85, !56, i64 0}
!85 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !56, i64 0, !56, i64 2, !47, i64 8, !47, i64 16, !47, i64 24, !86, i64 32, !86, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !46, i64 96}
!86 = !{!"long", !43, i64 0}
!87 = !{!88, !47, i64 40}
!88 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !89, i64 8, !47, i64 16, !46, i64 24, !47, i64 32, !47, i64 40}
!89 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
