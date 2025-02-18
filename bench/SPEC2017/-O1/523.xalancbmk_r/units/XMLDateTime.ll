; ModuleID = 'XMLDateTime.cpp'
source_filename = "XMLDateTime.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLDateTime" = type { %"class.xercesc_2_7::XMLNumber", [8 x i32], [2 x i32], i32, i32, i32, double, i8, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_723SchemaDateTimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_723SchemaDateTimeException9duplicateEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

$_ZTSN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTIN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTVN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTVN11xercesc_2_721NumberFormatExceptionE = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L9DATETIMESE = internal unnamed_addr constant [4 x [8 x i32]] [[8 x i32] [i32 1696, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 1697, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 1903, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 1903, i32 7, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1]], align 16
@_ZTVN11xercesc_2_711XMLDateTimeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711XMLDateTimeE, ptr @_ZN11xercesc_2_711XMLDateTimeD2Ev, ptr @_ZN11xercesc_2_711XMLDateTimeD0Ev, ptr @_ZNK11xercesc_2_711XMLDateTime14isSerializableEv, ptr @_ZN11xercesc_2_711XMLDateTime9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_711XMLDateTime12getProtoTypeEv, ptr @_ZNK11xercesc_2_711XMLDateTime8toStringEv, ptr @_ZNK11xercesc_2_711XMLDateTime10getRawDataEv, ptr @_ZNK11xercesc_2_711XMLDateTime18getFormattedStringEv, ptr @_ZNK11xercesc_2_711XMLDateTime7getSignEv] }, align 8
@.str = private unnamed_addr constant [16 x i8] c"XMLDateTime.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_723SchemaDateTimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723SchemaDateTimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L7UTC_SETE = internal constant [4 x i16] [i16 90, i16 43, i16 45, i16 0], align 2
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"XMLDateTime\00", align 1
@_ZN11xercesc_2_711XMLDateTime16classXMLDateTimeE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_711XMLDateTime12createObjectEPNS_13MemoryManagerE }, align 8
@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZTSN11xercesc_2_711XMLDateTimeE = dso_local constant [29 x i8] c"N11xercesc_2_711XMLDateTimeE\00", align 1
@_ZTIN11xercesc_2_79XMLNumberE = external constant ptr
@_ZTIN11xercesc_2_711XMLDateTimeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711XMLDateTimeE, ptr @_ZTIN11xercesc_2_79XMLNumberE }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/XMLDateTime.hpp\00", align 1
@_ZTVN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_723SchemaDateTimeExceptionD0Ev, ptr @_ZNK11xercesc_2_723SchemaDateTimeException7getTypeEv, ptr @_ZNK11xercesc_2_723SchemaDateTimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni30fgSchemaDateTimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721NumberFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv, ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_711XMLDateTimeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711XMLDateTimeD2Ev
@_ZN11xercesc_2_711XMLDateTimeC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_711XMLDateTimeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime7compareEPKS0_S2_b(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %5 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %6 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %72, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #16
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !42
  call void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef %9)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #16
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %10)
          to label %11 unwind label %13

11:                                               ; preds = %8
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0)
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0)
  %12 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %17 unwind label %15

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %70

15:                                               ; preds = %53, %35, %17, %11
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  br label %70

17:                                               ; preds = %11
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 1)
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 1)
  %18 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %19 unwind label %15

19:                                               ; preds = %17
  %20 = icmp eq i32 %18, 2
  br i1 %20, label %32, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %12, %18
  %23 = xor i1 %2, true
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = or i1 %22, %2
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = icmp eq i32 %12, 0
  %29 = icmp eq i32 %18, 0
  %30 = select i1 %29, i32 %12, i32 2
  %31 = select i1 %28, i32 %18, i32 %30
  br label %32

32:                                               ; preds = %19, %21, %25, %27
  %33 = phi i32 [ 2, %19 ], [ 2, %21 ], [ %12, %25 ], [ %31, %27 ]
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %68, label %35

35:                                               ; preds = %32
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 2)
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 2)
  %36 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %37 unwind label %15

37:                                               ; preds = %35
  %38 = icmp eq i32 %36, 2
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = icmp eq i32 %33, %36
  %41 = xor i1 %2, true
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = or i1 %40, %2
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = icmp eq i32 %33, 0
  %47 = icmp eq i32 %36, 0
  %48 = select i1 %47, i32 %33, i32 2
  %49 = select i1 %46, i32 %36, i32 %48
  br label %50

50:                                               ; preds = %37, %39, %43, %45
  %51 = phi i32 [ 2, %37 ], [ 2, %39 ], [ %33, %43 ], [ %49, %45 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 3)
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 3)
  %54 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %55 unwind label %15

55:                                               ; preds = %53
  %56 = icmp eq i32 %54, 2
  br i1 %56, label %68, label %57

57:                                               ; preds = %55
  %58 = icmp eq i32 %51, %54
  %59 = xor i1 %2, true
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = or i1 %58, %2
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = icmp eq i32 %51, 0
  %65 = icmp eq i32 %54, 0
  %66 = select i1 %65, i32 %51, i32 2
  %67 = select i1 %64, i32 %54, i32 %66
  br label %68

68:                                               ; preds = %63, %61, %57, %55, %50, %32
  %69 = phi i32 [ 2, %32 ], [ 2, %50 ], [ 2, %55 ], [ 2, %57 ], [ %51, %61 ], [ %67, %63 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  br label %72

70:                                               ; preds = %15, %13
  %71 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  resume { ptr, i32 } %71

72:                                               ; preds = %3, %68
  %73 = phi i32 [ %69, %68 ], [ 0, %3 ]
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %4 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #16
  invoke void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %5 unwind label %15

5:                                                ; preds = %2
  call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
  call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 1, i64 0
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %4, i64 0, i32 1, i64 0
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %29, label %23

11:                                               ; preds = %23
  %12 = add nuw nsw i64 %27, 1
  %13 = icmp ugt i64 %27, 6
  %14 = icmp eq i64 %12, 8
  br i1 %14, label %29, label %17, !llvm.loop !48

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  resume { ptr, i32 } %16

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 1, i64 %12
  %19 = load i32, ptr %18, align 4, !tbaa !46
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %4, i64 0, i32 1, i64 %12
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %29, label %23, !llvm.loop !48

23:                                               ; preds = %5, %17
  %24 = phi i32 [ %21, %17 ], [ %9, %5 ]
  %25 = phi i32 [ %19, %17 ], [ %7, %5 ]
  %26 = phi i1 [ %13, %17 ], [ false, %5 ]
  %27 = phi i64 [ %12, %17 ], [ 0, %5 ]
  %28 = icmp sgt i32 %25, %24
  br i1 %28, label %29, label %11

29:                                               ; preds = %11, %17, %23, %5
  %30 = phi i1 [ false, %5 ], [ %13, %11 ], [ %13, %17 ], [ %26, %23 ]
  %31 = phi i32 [ -1, %5 ], [ undef, %11 ], [ -1, %17 ], [ 1, %23 ]
  br i1 %30, label %32, label %45

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 7
  %34 = load i8, ptr %33, align 8, !tbaa !51, !range !57, !noundef !58
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 6
  %38 = load double, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %4, i64 0, i32 6
  %40 = load double, ptr %39, align 8, !tbaa !59
  %41 = fcmp olt double %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = fcmp ogt double %38, %40
  br i1 %43, label %45, label %44

44:                                               ; preds = %42, %32
  br label %45

45:                                               ; preds = %42, %36, %29, %44
  %46 = phi i32 [ 0, %44 ], [ %31, %29 ], [ -1, %36 ], [ 1, %42 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  ret i32 %46
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !41 {
  %4 = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double 0.000000e+00, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 0, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i16 0, ptr %9, align 2, !tbaa !61
  br label %12

12:                                               ; preds = %3, %11
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %13
  %15 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %13, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !46
  %20 = add nsw i32 %19, %16
  %21 = add nsw i32 %20, -1
  %22 = tail call i64 @div(i32 noundef %21, i32 noundef 12) #17
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %23, -12
  %25 = add i32 %24, %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %25, ptr %27, align 4, !tbaa !46
  %28 = icmp slt i32 %25, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = add nsw i32 %25, 12
  store i32 %30, ptr %27, align 4, !tbaa !46
  %31 = add nsw i32 %23, -1
  br label %32

32:                                               ; preds = %29, %12
  %33 = phi i32 [ %31, %29 ], [ %23, %12 ]
  %34 = load i32, ptr %14, align 16, !tbaa !46
  %35 = load i32, ptr %17, align 8, !tbaa !46
  %36 = add i32 %34, %33
  %37 = add i32 %36, %35
  store i32 %37, ptr %26, align 8, !tbaa !46
  %38 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %13, i64 5
  %39 = load i32, ptr %38, align 4, !tbaa !46
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 5
  %41 = load i32, ptr %40, align 4, !tbaa !46
  %42 = add nsw i32 %41, %39
  %43 = tail call i64 @div(i32 noundef %42, i32 noundef 60) #17
  %44 = trunc i64 %43 to i32
  %45 = mul i32 %44, -60
  %46 = add i32 %45, %42
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %46, ptr %47, align 4, !tbaa !46
  %48 = icmp slt i32 %46, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = add nsw i32 %46, 60
  store i32 %50, ptr %47, align 4, !tbaa !46
  %51 = add nsw i32 %44, -1
  br label %52

52:                                               ; preds = %49, %32
  %53 = phi i32 [ %51, %49 ], [ %44, %32 ]
  %54 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %13, i64 4
  %55 = load i32, ptr %54, align 16, !tbaa !46
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 4
  %57 = load i32, ptr %56, align 8, !tbaa !46
  %58 = add i32 %55, %53
  %59 = add i32 %58, %57
  %60 = tail call i64 @div(i32 noundef %59, i32 noundef 60) #17
  %61 = trunc i64 %60 to i32
  %62 = mul i32 %61, -60
  %63 = add i32 %62, %59
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  store i32 %63, ptr %64, align 8, !tbaa !46
  %65 = icmp slt i32 %63, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = add nsw i32 %63, 60
  store i32 %67, ptr %64, align 8, !tbaa !46
  %68 = add nsw i32 %61, -1
  br label %69

69:                                               ; preds = %66, %52
  %70 = phi i32 [ %68, %66 ], [ %61, %52 ]
  %71 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %13, i64 3
  %72 = load i32, ptr %71, align 4, !tbaa !46
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 3
  %74 = load i32, ptr %73, align 4, !tbaa !46
  %75 = add i32 %72, %70
  %76 = add i32 %75, %74
  %77 = tail call i64 @div(i32 noundef %76, i32 noundef 24) #17
  %78 = trunc i64 %77 to i32
  %79 = mul i32 %78, -24
  %80 = add i32 %79, %76
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  store i32 %80, ptr %81, align 4, !tbaa !46
  %82 = icmp slt i32 %80, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = add nsw i32 %80, 24
  store i32 %84, ptr %81, align 4, !tbaa !46
  %85 = add nsw i32 %78, -1
  br label %86

86:                                               ; preds = %83, %69
  %87 = phi i32 [ %85, %83 ], [ %78, %69 ]
  %88 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %13, i64 2
  %89 = load i32, ptr %88, align 8, !tbaa !46
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 2
  %91 = load i32, ptr %90, align 8, !tbaa !46
  %92 = add i32 %89, %87
  %93 = add i32 %92, %91
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %93, ptr %94, align 8, !tbaa !46
  %95 = load i32, ptr %26, align 8, !tbaa !46
  %96 = load i32, ptr %27, align 4, !tbaa !46
  br label %97

97:                                               ; preds = %147, %86
  %98 = phi i32 [ %135, %147 ], [ %93, %86 ]
  %99 = phi i32 [ %148, %147 ], [ %96, %86 ]
  %100 = phi i32 [ %150, %147 ], [ %95, %86 ]
  switch i32 %99, label %111 [
    i32 11, label %112
    i32 9, label %112
    i32 6, label %112
    i32 4, label %112
    i32 2, label %101
  ]

101:                                              ; preds = %97
  %102 = and i32 %100, 3
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = srem i32 %100, 100
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = srem i32 %100, 400
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 29, i32 28
  br label %112

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %97, %97, %97, %101, %104, %107, %97, %111
  %113 = phi i32 [ 31, %111 ], [ 30, %97 ], [ 28, %101 ], [ 29, %104 ], [ %110, %107 ], [ 30, %97 ], [ 30, %97 ], [ 30, %97 ]
  %114 = icmp slt i32 %98, 1
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  switch i32 %99, label %126 [
    i32 12, label %127
    i32 10, label %127
    i32 7, label %127
    i32 5, label %127
    i32 3, label %116
  ]

116:                                              ; preds = %115
  %117 = and i32 %100, 3
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = srem i32 %100, 100
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = srem i32 %100, 400
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 29, i32 28
  br label %127

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %115, %115, %115, %116, %119, %122, %115, %126
  %128 = phi i32 [ 31, %126 ], [ 30, %115 ], [ 28, %116 ], [ 29, %119 ], [ %125, %122 ], [ 30, %115 ], [ 30, %115 ], [ 30, %115 ]
  %129 = add nsw i32 %128, %98
  br label %134

130:                                              ; preds = %112
  %131 = icmp sgt i32 %98, %113
  br i1 %131, label %132, label %151

132:                                              ; preds = %130
  %133 = sub nsw i32 %98, %113
  br label %134

134:                                              ; preds = %132, %127
  %135 = phi i32 [ %133, %132 ], [ %129, %127 ]
  %136 = phi i32 [ 1, %132 ], [ -1, %127 ]
  store i32 %135, ptr %94, align 8, !tbaa !46
  %137 = add nsw i32 %136, %99
  %138 = add nsw i32 %137, -1
  %139 = tail call i64 @div(i32 noundef %138, i32 noundef 12) #17
  %140 = trunc i64 %139 to i32
  %141 = mul i32 %140, -12
  %142 = add i32 %141, %137
  store i32 %142, ptr %27, align 4, !tbaa !46
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = add nsw i32 %142, 12
  store i32 %145, ptr %27, align 4, !tbaa !46
  %146 = add nsw i32 %100, -1
  store i32 %146, ptr %26, align 8, !tbaa !46
  br label %147

147:                                              ; preds = %144, %134
  %148 = phi i32 [ %145, %144 ], [ %142, %134 ]
  %149 = phi i32 [ %146, %144 ], [ %100, %134 ]
  %150 = add nsw i32 %149, %140
  store i32 %150, ptr %26, align 8, !tbaa !46
  br label %97, !llvm.loop !63

151:                                              ; preds = %130
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 1, ptr %152, align 4, !tbaa !46
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEiib(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !41 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, %1
  %7 = xor i1 %2, true
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = or i1 %6, %2
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %0, 0
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 %0, i32 2
  %15 = select i1 %12, i32 %1, i32 %14
  br label %16

16:                                               ; preds = %11, %9, %5, %3
  %17 = phi i32 [ 2, %3 ], [ 2, %5 ], [ %0, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime7compareEPKS0_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 7
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef %0, ptr noundef %1)
  br label %40

10:                                               ; preds = %2
  %11 = icmp eq i32 %4, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i32 noundef 2)
  %14 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false, i32 noundef 3)
  %15 = icmp eq i32 %13, -1
  %16 = icmp eq i32 %14, 1
  %17 = and i1 %15, %16
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  %19 = icmp eq i32 %13, 1
  %20 = icmp eq i32 %14, -1
  %21 = and i1 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %13, 2
  %24 = select i1 %23, i32 %14, i32 %13
  br label %40

25:                                               ; preds = %10
  %26 = icmp eq i32 %6, 1
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i32 noundef 2)
  %29 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i32 noundef 3)
  %30 = icmp eq i32 %28, -1
  %31 = icmp eq i32 %29, 1
  %32 = and i1 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = icmp eq i32 %28, 1
  %35 = icmp eq i32 %29, -1
  %36 = and i1 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %28, 2
  %39 = select i1 %38, i32 %29, i32 %28
  br label %40

40:                                               ; preds = %37, %33, %27, %22, %18, %12, %25, %8
  %41 = phi i32 [ %9, %8 ], [ 2, %25 ], [ %24, %22 ], [ 2, %18 ], [ 2, %12 ], [ %39, %37 ], [ 2, %33 ], [ 2, %27 ]
  ret i32 %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #16
  %6 = select i1 %2, ptr %0, ptr %1
  call void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %6)
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %5, i64 0, i32 2
  store i32 14, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %5, i64 0, i32 2, i64 1
  store i32 0, ptr %8, align 4, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %5, i64 0, i32 1, i64 7
  store i32 %3, ptr %9, align 4, !tbaa !46
  call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
  br i1 %2, label %10, label %12

10:                                               ; preds = %4
  %11 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %5, ptr noundef %1)
          to label %14 unwind label %16

12:                                               ; preds = %4
  %13 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef %0, ptr noundef nonnull %5)
          to label %14 unwind label %16

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  ret i32 %15

16:                                               ; preds = %12, %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #4 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %117, label %6, !prof !65

6:                                                ; preds = %1
  %7 = icmp eq i32 %4, 2
  %8 = select i1 %7, i32 -1, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = add nsw i32 %10, -1
  %12 = tail call i64 @div(i32 noundef %11, i32 noundef 12) #17
  %13 = trunc i64 %12 to i32
  %14 = mul i32 %13, -12
  %15 = add i32 %14, %10
  store i32 %15, ptr %9, align 4, !tbaa !46
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = add nsw i32 %15, 12
  store i32 %18, ptr %9, align 4, !tbaa !46
  %19 = add nsw i32 %13, -1
  br label %20

20:                                               ; preds = %17, %6
  %21 = phi i32 [ %19, %17 ], [ %13, %6 ]
  %22 = load i32, ptr %2, align 8, !tbaa !46
  %23 = add nsw i32 %22, %21
  store i32 %23, ptr %2, align 8, !tbaa !46
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %25 = load i32, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = mul nsw i32 %28, %8
  %30 = add nsw i32 %29, %25
  %31 = tail call i64 @div(i32 noundef %30, i32 noundef 60) #17
  %32 = trunc i64 %31 to i32
  %33 = mul i32 %32, -60
  %34 = add i32 %33, %30
  store i32 %34, ptr %24, align 8, !tbaa !46
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = add nsw i32 %34, 60
  store i32 %37, ptr %24, align 8, !tbaa !46
  %38 = add nsw i32 %32, -1
  br label %39

39:                                               ; preds = %36, %20
  %40 = phi i32 [ %38, %36 ], [ %32, %20 ]
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %42 = load i32, ptr %41, align 4, !tbaa !46
  %43 = load i32, ptr %26, align 8, !tbaa !46
  %44 = mul nsw i32 %43, %8
  %45 = add i32 %42, %40
  %46 = add i32 %45, %44
  %47 = tail call i64 @div(i32 noundef %46, i32 noundef 24) #17
  %48 = trunc i64 %47 to i32
  %49 = mul i32 %48, -24
  %50 = add i32 %49, %46
  store i32 %50, ptr %41, align 4, !tbaa !46
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = add nsw i32 %50, 24
  store i32 %53, ptr %41, align 4, !tbaa !46
  %54 = add nsw i32 %48, -1
  br label %55

55:                                               ; preds = %52, %39
  %56 = phi i32 [ %54, %52 ], [ %48, %39 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %58 = load i32, ptr %57, align 8, !tbaa !46
  %59 = add nsw i32 %58, %56
  store i32 %59, ptr %57, align 8, !tbaa !46
  %60 = load i32, ptr %2, align 8, !tbaa !46
  %61 = load i32, ptr %9, align 4, !tbaa !46
  br label %62

62:                                               ; preds = %112, %55
  %63 = phi i32 [ %100, %112 ], [ %59, %55 ]
  %64 = phi i32 [ %113, %112 ], [ %61, %55 ]
  %65 = phi i32 [ %115, %112 ], [ %60, %55 ]
  switch i32 %64, label %76 [
    i32 11, label %77
    i32 9, label %77
    i32 6, label %77
    i32 4, label %77
    i32 2, label %66
  ]

66:                                               ; preds = %62
  %67 = and i32 %65, 3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = srem i32 %65, 100
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = srem i32 %65, 400
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 29, i32 28
  br label %77

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %62, %62, %62, %66, %69, %72, %62, %76
  %78 = phi i32 [ 31, %76 ], [ 30, %62 ], [ 28, %66 ], [ 29, %69 ], [ %75, %72 ], [ 30, %62 ], [ 30, %62 ], [ 30, %62 ]
  %79 = icmp slt i32 %63, 1
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  switch i32 %64, label %91 [
    i32 12, label %92
    i32 10, label %92
    i32 7, label %92
    i32 5, label %92
    i32 3, label %81
  ]

81:                                               ; preds = %80
  %82 = and i32 %65, 3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = srem i32 %65, 100
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = srem i32 %65, 400
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 29, i32 28
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %80, %80, %80, %81, %84, %87, %80, %91
  %93 = phi i32 [ 31, %91 ], [ 30, %80 ], [ 28, %81 ], [ 29, %84 ], [ %90, %87 ], [ 30, %80 ], [ 30, %80 ], [ 30, %80 ]
  %94 = add nsw i32 %93, %63
  br label %99

95:                                               ; preds = %77
  %96 = icmp sgt i32 %63, %78
  br i1 %96, label %97, label %116

97:                                               ; preds = %95
  %98 = sub nsw i32 %63, %78
  br label %99

99:                                               ; preds = %97, %92
  %100 = phi i32 [ %98, %97 ], [ %94, %92 ]
  %101 = phi i32 [ 1, %97 ], [ -1, %92 ]
  store i32 %100, ptr %57, align 8, !tbaa !46
  %102 = add nsw i32 %101, %64
  %103 = add nsw i32 %102, -1
  %104 = tail call i64 @div(i32 noundef %103, i32 noundef 12) #17
  %105 = trunc i64 %104 to i32
  %106 = mul i32 %105, -12
  %107 = add i32 %106, %102
  store i32 %107, ptr %9, align 4, !tbaa !46
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = add nsw i32 %107, 12
  store i32 %110, ptr %9, align 4, !tbaa !46
  %111 = add nsw i32 %65, -1
  store i32 %111, ptr %2, align 8, !tbaa !46
  br label %112

112:                                              ; preds = %109, %99
  %113 = phi i32 [ %110, %109 ], [ %107, %99 ]
  %114 = phi i32 [ %111, %109 ], [ %65, %99 ]
  %115 = add nsw i32 %114, %105
  store i32 %115, ptr %2, align 8, !tbaa !46
  br label %62, !llvm.loop !66

116:                                              ; preds = %95
  store i32 1, ptr %3, align 4, !tbaa !46
  br label %117

117:                                              ; preds = %1, %116
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3)
          to label %11 unwind label %12, !prof !71

11:                                               ; preds = %5, %1
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !41 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 0, ptr %4, align 4, !tbaa !73
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  store i32 0, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double 0.000000e+00, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 0, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  store ptr null, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  store ptr %1, ptr %9, align 8, !tbaa !70
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !tbaa !46
  store double 0.000000e+00, ptr %6, align 8, !tbaa !59
  store i8 0, ptr %7, align 8, !tbaa !51
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !73
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 0, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  store ptr %2, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false), !tbaa !46
  store double 0.000000e+00, ptr %7, align 8, !tbaa !59
  store i8 0, ptr %8, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %13 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br i1 %13, label %28, label %14, !prof !69

14:                                               ; preds = %3
  %15 = load i16, ptr %1, align 2, !tbaa !61
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17, !prof !69

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !61
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !prof !75, !llvm.loop !76

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = lshr exact i64 %25, 1
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %22, %14, %3
  %29 = phi i32 [ %27, %22 ], [ 0, %14 ], [ 0, %3 ]
  store i32 %29, ptr %5, align 4, !tbaa !73
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %56, !prof !65

31:                                               ; preds = %28
  %32 = load i32, ptr %6, align 8, !tbaa !74
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %50, !prof !65

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 8, !tbaa !67
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null)
          to label %38 unwind label %57, !prof !71

38:                                               ; preds = %34
  %39 = load i32, ptr %5, align 4, !tbaa !73
  %40 = add nsw i32 %39, 8
  store i32 %40, ptr %6, align 8, !tbaa !74
  %41 = load ptr, ptr %10, align 8, !tbaa !70
  %42 = add nsw i32 %39, 9
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 1
  %45 = load ptr, ptr %41, align 8, !tbaa !67
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
          to label %49 unwind label %57, !prof !77

49:                                               ; preds = %38
  store ptr %48, ptr %9, align 8, !tbaa !60
  br label %50

50:                                               ; preds = %49, %31
  %51 = load ptr, ptr %9, align 8, !tbaa !60
  %52 = load i32, ptr %5, align 4, !tbaa !73
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %51, ptr align 2 %1, i64 %55, i1 false), !prof !78
  br label %56

56:                                               ; preds = %50, %28
  ret void

57:                                               ; preds = %38, %34
  %58 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %58
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  store i32 0, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  store ptr %7, ptr %5, align 8, !tbaa !70
  br label %28

8:                                                ; preds = %28
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 6
  %10 = load double, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double %10, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 7
  %13 = load i8, ptr %12, align 8, !tbaa !51, !range !57, !noundef !58
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 %13, ptr %14, align 8, !tbaa !51
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 2, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !46
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !46
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !72
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 %25, ptr %26, align 4, !tbaa !73
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %35, label %62

28:                                               ; preds = %2, %28
  %29 = phi i64 [ 0, %2 ], [ %33, %28 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %29
  store i32 %31, ptr %32, align 4, !tbaa !46
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, 8
  br i1 %34, label %8, label %28, !llvm.loop !79

35:                                               ; preds = %8
  %36 = load i32, ptr %3, align 8, !tbaa !74
  %37 = icmp sgt i32 %25, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load ptr, ptr %7, align 8, !tbaa !67
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef null)
          to label %42 unwind label %63

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !74
  store i32 %44, ptr %3, align 8, !tbaa !74
  %45 = load ptr, ptr %5, align 8, !tbaa !70
  %46 = add nsw i32 %44, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 1
  %49 = load ptr, ptr %45, align 8, !tbaa !67
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef %48)
          to label %53 unwind label %63

53:                                               ; preds = %42
  store ptr %52, ptr %4, align 8, !tbaa !60
  br label %54

54:                                               ; preds = %53, %35
  %55 = load ptr, ptr %4, align 8, !tbaa !60
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = load i32, ptr %26, align 4, !tbaa !73
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr align 2 %57, i64 %61, i1 false)
  br label %62

62:                                               ; preds = %54, %8
  ret void

63:                                               ; preds = %42, %38
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %64
}

declare void @_ZN11xercesc_2_79XMLNumberC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN11xercesc_2_711XMLDateTimeaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef nonnull readonly align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %62, label %24

4:                                                ; preds = %24
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 6
  %6 = load double, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double %6, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 7
  %9 = load i8, ptr %8, align 8, !tbaa !51, !range !57, !noundef !58
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 %9, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 2, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  store i32 %15, ptr %16, align 4, !tbaa !46
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !73
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 %21, ptr %22, align 4, !tbaa !73
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %31, label %62

24:                                               ; preds = %2, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %2 ]
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %25
  store i32 %27, ptr %28, align 4, !tbaa !46
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %4, label %24, !llvm.loop !79

31:                                               ; preds = %4
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = icmp sgt i32 %21, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = load ptr, ptr %37, align 8, !tbaa !67
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %39)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !74
  store i32 %44, ptr %32, align 8, !tbaa !74
  %45 = load ptr, ptr %36, align 8, !tbaa !70
  %46 = add nsw i32 %44, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 1
  %49 = load ptr, ptr %45, align 8, !tbaa !67
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef %48)
  store ptr %52, ptr %38, align 8, !tbaa !60
  br label %53

53:                                               ; preds = %35, %31
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = load i32, ptr %22, align 4, !tbaa !73
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr align 2 %57, i64 %61, i1 false)
  br label %62

62:                                               ; preds = %53, %4, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime8toStringEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  %16 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef nonnull %3)
  ret ptr %16
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime10getRawDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime18getFormattedStringEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime7getSignEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !41 {
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %16

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %33, %16
  %14 = phi ptr [ %28, %33 ], [ %9, %16 ]
  %15 = phi { ptr, i32 } [ %34, %33 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %13

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_711XMLDateTime7getDateEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %20 = load ptr, ptr %2, align 8, !tbaa !60
  %21 = load i32, ptr %19, align 8, !tbaa !72
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %19, align 8, !tbaa !72
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i16, ptr %20, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !61
  %26 = icmp eq i16 %25, 84
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %29 = load ptr, ptr %2, align 8, !tbaa !60
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 537, i32 noundef 322, ptr noundef %29, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %31)
          to label %32 unwind label %33

32:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %13

35:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_711XMLDateTime7getTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 1, ptr %36, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime7getDateEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = add nsw i32 %3, 10
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !73
  %7 = icmp sgt i32 %4, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  br i1 %7, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = load ptr, ptr %8, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 964, i32 noundef 333, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %39

17:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_711XMLDateTime12getYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %18 = load ptr, ptr %8, align 8, !tbaa !60
  %19 = load i32, ptr %2, align 8, !tbaa !72
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %2, align 8, !tbaa !72
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !61
  %24 = icmp eq i16 %23, 45
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %27 = load ptr, ptr %8, align 8, !tbaa !60
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 334, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %39

33:                                               ; preds = %17
  %34 = add nsw i32 %19, 3
  %35 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %20, i32 noundef %34)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %35, ptr %36, align 8, !tbaa !46
  %37 = load i32, ptr %2, align 8, !tbaa !72
  %38 = add nsw i32 %37, 2
  store i32 %38, ptr %2, align 8, !tbaa !72
  ret void

39:                                               ; preds = %31, %15
  %40 = phi ptr [ %26, %31 ], [ %10, %15 ]
  %41 = phi { ptr, i32 } [ %32, %31 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %40) #16
  resume { ptr, i32 } %41
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723SchemaDateTimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime7getTimeEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = add nsw i32 %3, 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !73
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %17, !prof !69

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 335, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %51

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = add nsw i32 %3, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %19, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !61
  %24 = icmp eq i16 %23, 58
  br i1 %24, label %25, label %31, !prof !65

25:                                               ; preds = %17
  %26 = sext i32 %3 to i64
  %27 = getelementptr i16, ptr %19, i64 %26
  %28 = getelementptr i16, ptr %27, i64 5
  %29 = load i16, ptr %28, align 2, !tbaa !61
  %30 = icmp eq i16 %29, 58
  br i1 %30, label %39, label %31, !prof !65

31:                                               ; preds = %25, %17
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %33 = load ptr, ptr %18, align 8, !tbaa !60
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1011, i32 noundef 336, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %51

39:                                               ; preds = %25, %56
  %40 = phi i64 [ %61, %56 ], [ %26, %25 ]
  %41 = phi i32 [ %60, %56 ], [ 0, %25 ]
  %42 = getelementptr inbounds i16, ptr %19, i64 %40
  %43 = load i16, ptr %42, align 2, !tbaa !61
  %44 = add i16 %43, -58
  %45 = icmp ult i16 %44, -10
  br i1 %45, label %46, label %56, !prof !80

46:                                               ; preds = %39
  %47 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull @.str, i32 noundef 1410, i32 noundef 264, ptr noundef %49)
          to label %50 unwind label %54

50:                                               ; preds = %46
  tail call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

51:                                               ; preds = %15, %37, %181, %161, %107, %81, %54
  %52 = phi ptr [ %9, %15 ], [ %32, %37 ], [ %176, %181 ], [ %156, %161 ], [ %103, %107 ], [ %77, %81 ], [ %47, %54 ]
  %53 = phi { ptr, i32 } [ %16, %15 ], [ %38, %37 ], [ %182, %181 ], [ %162, %161 ], [ %108, %107 ], [ %82, %81 ], [ %55, %54 ]
  tail call void @__cxa_free_exception(ptr %52) #16
  resume { ptr, i32 } %53

54:                                               ; preds = %46
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %51

56:                                               ; preds = %39
  %57 = zext nneg i16 %43 to i32
  %58 = mul i32 %41, 10
  %59 = add i32 %58, -48
  %60 = add i32 %59, %57
  %61 = add nsw i64 %40, 1
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %20, %62
  br i1 %63, label %64, label %39, !prof !81, !llvm.loop !82

64:                                               ; preds = %56
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  store i32 %60, ptr %65, align 4, !tbaa !46
  %66 = add nsw i32 %3, 3
  %67 = add nsw i32 %3, 5
  %68 = sext i32 %66 to i64
  br label %69

69:                                               ; preds = %83, %64
  %70 = phi i64 [ %68, %64 ], [ %88, %83 ]
  %71 = phi i32 [ 0, %64 ], [ %87, %83 ]
  %72 = getelementptr inbounds i16, ptr %19, i64 %70
  %73 = load i16, ptr %72, align 2, !tbaa !61
  %74 = add i16 %73, -58
  %75 = icmp ult i16 %74, -10
  br i1 %75, label %76, label %83, !prof !80

76:                                               ; preds = %69
  %77 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull @.str, i32 noundef 1410, i32 noundef 264, ptr noundef %79)
          to label %80 unwind label %81

80:                                               ; preds = %76
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %51

83:                                               ; preds = %69
  %84 = zext nneg i16 %73 to i32
  %85 = mul i32 %71, 10
  %86 = add i32 %85, -48
  %87 = add i32 %86, %84
  %88 = add nsw i64 %70, 1
  %89 = trunc i64 %88 to i32
  %90 = icmp eq i32 %67, %89
  br i1 %90, label %91, label %69, !prof !81, !llvm.loop !82

91:                                               ; preds = %83
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  store i32 %87, ptr %92, align 8, !tbaa !46
  %93 = add nsw i32 %3, 6
  %94 = sext i32 %93 to i64
  br label %95

95:                                               ; preds = %109, %91
  %96 = phi i64 [ %94, %91 ], [ %114, %109 ]
  %97 = phi i32 [ 0, %91 ], [ %113, %109 ]
  %98 = getelementptr inbounds i16, ptr %19, i64 %96
  %99 = load i16, ptr %98, align 2, !tbaa !61
  %100 = add i16 %99, -58
  %101 = icmp ult i16 %100, -10
  br i1 %101, label %102, label %109, !prof !80

102:                                              ; preds = %95
  %103 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr noundef nonnull @.str, i32 noundef 1410, i32 noundef 264, ptr noundef %105)
          to label %106 unwind label %107

106:                                              ; preds = %102
  tail call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

107:                                              ; preds = %102
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %51

109:                                              ; preds = %95
  %110 = zext nneg i16 %99 to i32
  %111 = mul i32 %97, 10
  %112 = add i32 %111, -48
  %113 = add i32 %112, %110
  %114 = add nsw i64 %96, 1
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %4, %115
  br i1 %116, label %117, label %95, !prof !81, !llvm.loop !82

117:                                              ; preds = %109
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %113, ptr %118, align 4, !tbaa !46
  store i32 %4, ptr %2, align 8, !tbaa !72
  %119 = icmp slt i32 %4, %6
  br i1 %119, label %120, label %186, !prof !69

120:                                              ; preds = %117
  %121 = load i32, ptr %5, align 4, !tbaa !73
  %122 = icmp slt i32 %4, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = add nsw i64 %26, 8
  br label %125

125:                                              ; preds = %123, %136
  %126 = phi i64 [ %124, %123 ], [ %137, %136 ]
  %127 = load ptr, ptr %18, align 8, !tbaa !60
  %128 = getelementptr inbounds i16, ptr %127, i64 %126
  %129 = load i16, ptr %128, align 2, !tbaa !61
  %130 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %129)
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = trunc i64 %126 to i32
  %134 = add nuw nsw i32 %130, 1
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %134, ptr %135, align 4, !tbaa !46
  br label %141

136:                                              ; preds = %125
  %137 = add nsw i64 %126, 1
  %138 = load i32, ptr %5, align 4, !tbaa !73
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %125, label %141, !llvm.loop !83

141:                                              ; preds = %136, %120, %132
  %142 = phi i32 [ %133, %132 ], [ -1, %120 ], [ -1, %136 ]
  %143 = load ptr, ptr %18, align 8, !tbaa !60
  %144 = load i32, ptr %2, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16, ptr %143, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !61
  %148 = icmp ne i16 %147, 46
  %149 = icmp eq i32 %144, -1
  %150 = or i1 %149, %148
  br i1 %150, label %171, label %151

151:                                              ; preds = %141
  %152 = add nsw i32 %144, 1
  store i32 %152, ptr %2, align 8, !tbaa !72
  %153 = load i32, ptr %5, align 4, !tbaa !73
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %157 = load ptr, ptr %18, align 8, !tbaa !60
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %159 = load ptr, ptr %158, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %156, ptr noundef nonnull @.str, i32 noundef 1041, i32 noundef 337, ptr noundef %157, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %159)
          to label %160 unwind label %161

160:                                              ; preds = %155
  tail call void @__cxa_throw(ptr nonnull %156, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

161:                                              ; preds = %155
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %51

163:                                              ; preds = %151
  %164 = icmp eq i32 %142, -1
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  br i1 %164, label %166, label %169

166:                                              ; preds = %163
  %167 = tail call noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %152, i32 noundef %153)
  store double %167, ptr %165, align 8, !tbaa !59
  %168 = load i32, ptr %5, align 4, !tbaa !73
  store i32 %168, ptr %2, align 8, !tbaa !72
  br label %183

169:                                              ; preds = %163
  %170 = tail call noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %152, i32 noundef %142)
  store double %170, ptr %165, align 8, !tbaa !59
  br label %183

171:                                              ; preds = %141
  %172 = icmp ne i32 %142, 0
  %173 = icmp eq i32 %142, %144
  %174 = and i1 %172, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %177 = load ptr, ptr %18, align 8, !tbaa !60
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %179 = load ptr, ptr %178, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %176, ptr noundef nonnull @.str, i32 noundef 1061, i32 noundef 350, ptr noundef %177, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %179)
          to label %180 unwind label %181

180:                                              ; preds = %175
  tail call void @__cxa_throw(ptr nonnull %176, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

181:                                              ; preds = %175
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %51

183:                                              ; preds = %171, %166, %169
  %184 = icmp sgt i32 %142, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %142)
  br label %186

186:                                              ; preds = %183, %185, %117
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14, !prof !69

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 346, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %142

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = add i32 %16, -13
  %18 = icmp ult i32 %17, -12
  br i1 %18, label %19, label %28, !prof !69

19:                                               ; preds = %14
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1295, i32 noundef 347, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

26:                                               ; preds = %19
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %142

28:                                               ; preds = %14
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %30 = load i32, ptr %29, align 8
  switch i32 %16, label %41 [
    i32 11, label %42
    i32 9, label %42
    i32 6, label %42
    i32 4, label %42
    i32 2, label %31
  ], !prof !84

31:                                               ; preds = %28
  %32 = and i32 %3, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = srem i32 %3, 100
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = srem i32 %3, 400
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 29, i32 28
  br label %42

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %28, %28, %28, %31, %34, %37, %28, %41
  %43 = phi i32 [ 31, %41 ], [ 30, %28 ], [ 28, %31 ], [ 29, %34 ], [ %40, %37 ], [ 30, %28 ], [ 30, %28 ], [ 30, %28 ]
  %44 = icmp sgt i32 %30, %43
  %45 = icmp eq i32 %30, 0
  %46 = or i1 %45, %44
  br i1 %46, label %47, label %56, !prof !69

47:                                               ; preds = %42
  %48 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 348, ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %47
  tail call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

54:                                               ; preds = %47
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %142

56:                                               ; preds = %42
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %58 = load i32, ptr %57, align 4, !tbaa !46
  %59 = icmp ugt i32 %58, 24
  br i1 %59, label %74, label %60, !prof !69

60:                                               ; preds = %56
  %61 = icmp eq i32 %58, 24
  br i1 %61, label %62, label %83, !prof !69

62:                                               ; preds = %60
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %64 = load i32, ptr %63, align 8, !tbaa !46
  %65 = icmp ne i32 %64, 0
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %65, i1 true, i1 %68
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  %71 = load double, ptr %70, align 8
  %72 = fcmp une double %71, 0.000000e+00
  %73 = select i1 %69, i1 true, i1 %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %62, %56
  %75 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 1320, i32 noundef 349, ptr noundef %77, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %79)
          to label %80 unwind label %81

80:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %142

83:                                               ; preds = %62, %60
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %85 = load i32, ptr %84, align 8, !tbaa !46
  %86 = icmp ugt i32 %85, 59
  br i1 %86, label %87, label %96, !prof !69

87:                                               ; preds = %83
  %88 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !60
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %88, ptr noundef nonnull @.str, i32 noundef 1331, i32 noundef 350, ptr noundef %90, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %92)
          to label %93 unwind label %94

93:                                               ; preds = %87
  tail call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

94:                                               ; preds = %87
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %142

96:                                               ; preds = %83
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %98 = load i32, ptr %97, align 4, !tbaa !46
  %99 = icmp ugt i32 %98, 60
  br i1 %99, label %100, label %109, !prof !69

100:                                              ; preds = %96
  %101 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !60
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %101, ptr noundef nonnull @.str, i32 noundef 1342, i32 noundef 351, ptr noundef %103, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %105)
          to label %106 unwind label %107

106:                                              ; preds = %100
  tail call void @__cxa_throw(ptr nonnull %101, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

107:                                              ; preds = %100
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %142

109:                                              ; preds = %96
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !46
  %112 = tail call i32 @llvm.abs.i32(i32 %111, i1 true)
  %113 = icmp ugt i32 %112, 14
  br i1 %113, label %120, label %114, !prof !69

114:                                              ; preds = %109
  %115 = icmp ne i32 %112, 14
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %115, i1 true, i1 %118, !prof !65
  br i1 %119, label %129, label %120, !prof !65

120:                                              ; preds = %114, %109
  %121 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %123 = load ptr, ptr %122, align 8, !tbaa !60
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %121, ptr noundef nonnull @.str, i32 noundef 1353, i32 noundef 352, ptr noundef %123, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %125)
          to label %126 unwind label %127

126:                                              ; preds = %120
  tail call void @__cxa_throw(ptr nonnull %121, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

127:                                              ; preds = %120
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %142

129:                                              ; preds = %114
  %130 = tail call i32 @llvm.abs.i32(i32 %117, i1 true)
  %131 = icmp ugt i32 %130, 59
  br i1 %131, label %132, label %141, !prof !69

132:                                              ; preds = %129
  %133 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !60
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %133, ptr noundef nonnull @.str, i32 noundef 1363, i32 noundef 350, ptr noundef %135, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %137)
          to label %138 unwind label %139

138:                                              ; preds = %132
  tail call void @__cxa_throw(ptr nonnull %133, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

139:                                              ; preds = %132
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %142

141:                                              ; preds = %129
  ret void

142:                                              ; preds = %139, %127, %107, %94, %81, %54, %26, %12
  %143 = phi ptr [ %133, %139 ], [ %121, %127 ], [ %101, %107 ], [ %88, %94 ], [ %75, %81 ], [ %48, %54 ], [ %20, %26 ], [ %6, %12 ]
  %144 = phi { ptr, i32 } [ %140, %139 ], [ %128, %127 ], [ %108, %107 ], [ %95, %94 ], [ %82, %81 ], [ %55, %54 ], [ %27, %26 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %143) #16
  resume { ptr, i32 } %144
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_711XMLDateTime7getDateEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime13parseTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseTimeZoneEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !73
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !61
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %17 = load ptr, ptr %8, align 8, !tbaa !60
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str, i32 noundef 1130, i32 noundef 343, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %19)
          to label %20 unwind label %21

20:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #16
  resume { ptr, i32 } %22

23:                                               ; preds = %7
  %24 = add nuw nsw i32 %13, 1
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %24, ptr %25, align 4, !tbaa !46
  %26 = load i32, ptr %2, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %26)
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !69

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15, !prof !69

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %18, align 4, !tbaa !46
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %19, align 8, !tbaa !46
  tail call void @_ZN11xercesc_2_711XMLDateTime7getTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %16

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %35, %57, %16
  %14 = phi ptr [ %30, %35 ], [ %52, %57 ], [ %9, %16 ]
  %15 = phi { ptr, i32 } [ %36, %35 ], [ %58, %57 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %13

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !72
  %20 = icmp eq i16 %6, 45
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, ptr %3, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !61
  %24 = icmp eq i16 %23, 45
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds i16, ptr %3, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !61
  %28 = icmp eq i16 %27, 45
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %21, %18
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %31 = load ptr, ptr %2, align 8, !tbaa !60
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 323, ptr noundef %31, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %13

37:                                               ; preds = %25
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %38, align 8, !tbaa !46
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %39, align 4, !tbaa !46
  %40 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 3, i32 noundef 5)
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %40, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !73
  %44 = icmp sgt i32 %43, 5
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load ptr, ptr %2, align 8, !tbaa !60
  %47 = getelementptr inbounds i16, ptr %46, i64 5
  %48 = load i16, ptr %47, align 2, !tbaa !61
  %49 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %53 = load ptr, ptr %2, align 8, !tbaa !60
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull @.str, i32 noundef 604, i32 noundef 323, ptr noundef %53, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %55)
          to label %56 unwind label %57

56:                                               ; preds = %51
  tail call void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

57:                                               ; preds = %51
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %13

59:                                               ; preds = %45
  %60 = add nuw nsw i32 %49, 1
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %60, ptr %61, align 4, !tbaa !46
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 5)
  br label %62

62:                                               ; preds = %59, %37
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %9, !prof !85

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = sext i32 %1 to i64
  br label %11

9:                                                ; preds = %25, %3
  %10 = phi i32 [ 0, %3 ], [ %29, %25 ]
  ret i32 %10

11:                                               ; preds = %5, %25
  %12 = phi i64 [ %8, %5 ], [ %30, %25 ]
  %13 = phi i32 [ 0, %5 ], [ %29, %25 ]
  %14 = getelementptr inbounds i16, ptr %7, i64 %12
  %15 = load i16, ptr %14, align 2, !tbaa !61
  %16 = add i16 %15, -58
  %17 = icmp ult i16 %16, -10
  br i1 %17, label %18, label %25, !prof !80

18:                                               ; preds = %11
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 1410, i32 noundef 264, ptr noundef %21)
          to label %22 unwind label %23

22:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %19) #16
  resume { ptr, i32 } %24

25:                                               ; preds = %11
  %26 = zext nneg i16 %15 to i32
  %27 = mul i32 %13, 10
  %28 = add i32 %27, -48
  %29 = add i32 %28, %26
  %30 = add nsw i64 %12, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %9, label %11, !prof !81, !llvm.loop !82
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !61
  %8 = icmp eq i16 %7, 90
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !73
  br i1 %8, label %11, label %22

11:                                               ; preds = %2
  %12 = add nsw i32 %1, 1
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %47, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %16 = load ptr, ptr %3, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 1158, i32 noundef 344, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %18)
          to label %19 unwind label %20

19:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %48

22:                                               ; preds = %2
  %23 = add nsw i32 %1, 6
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = add nsw i32 %1, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %4, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !61
  %30 = icmp eq i16 %29, 58
  br i1 %30, label %39, label %31

31:                                               ; preds = %25, %22
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %33 = load ptr, ptr %3, align 8, !tbaa !60
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1177, i32 noundef 345, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %48

39:                                               ; preds = %25
  %40 = add nsw i32 %1, 1
  %41 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %40, i32 noundef %26)
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  store i32 %41, ptr %42, align 8, !tbaa !46
  %43 = add nsw i32 %1, 4
  %44 = load i32, ptr %9, align 4, !tbaa !73
  %45 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %43, i32 noundef %44)
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  store i32 %45, ptr %46, align 4, !tbaa !46
  br label %47

47:                                               ; preds = %11, %39
  ret void

48:                                               ; preds = %37, %20
  %49 = phi ptr [ %32, %37 ], [ %15, %20 ]
  %50 = phi { ptr, i32 } [ %38, %37 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %49) #16
  resume { ptr, i32 } %50
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %16

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %31, %67, %16
  %14 = phi ptr [ %26, %31 ], [ %62, %67 ], [ %9, %16 ]
  %15 = phi { ptr, i32 } [ %32, %31 ], [ %68, %67 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %13

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !72
  %20 = icmp eq i16 %6, 45
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, ptr %3, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !61
  %24 = icmp eq i16 %23, 45
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %18
  %26 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %27 = load ptr, ptr %2, align 8, !tbaa !60
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 632, i32 noundef 324, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %13

33:                                               ; preds = %21
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %34, align 8, !tbaa !46
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %35, align 8, !tbaa !46
  %36 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 2, i32 noundef 4)
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !46
  store i32 4, ptr %19, align 8, !tbaa !72
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !73
  %40 = icmp sgt i32 %39, 5
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load ptr, ptr %2, align 8, !tbaa !60
  %43 = getelementptr inbounds i16, ptr %42, i64 4
  %44 = load i16, ptr %43, align 2, !tbaa !61
  %45 = icmp eq i16 %44, 45
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds i16, ptr %42, i64 5
  %48 = load i16, ptr %47, align 2, !tbaa !61
  %49 = icmp eq i16 %48, 45
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 6, ptr %19, align 8, !tbaa !72
  br label %51

51:                                               ; preds = %50, %46, %41, %33
  %52 = load i32, ptr %19, align 8, !tbaa !72
  %53 = icmp slt i32 %52, %39
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load ptr, ptr %2, align 8, !tbaa !60
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !61
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %63 = load ptr, ptr %2, align 8, !tbaa !60
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull @.str, i32 noundef 660, i32 noundef 324, ptr noundef %63, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %61
  tail call void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %13

69:                                               ; preds = %54
  %70 = add nuw nsw i32 %59, 1
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %70, ptr %71, align 4, !tbaa !46
  %72 = load i32, ptr %19, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %72)
  br label %73

73:                                               ; preds = %69, %51
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !72
  %17 = icmp eq i16 %6, 45
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !73
  %21 = icmp sgt i32 %20, %18
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = zext i1 %17 to i64
  br label %24

24:                                               ; preds = %22, %35
  %25 = phi i64 [ %23, %22 ], [ %36, %35 ]
  %26 = load ptr, ptr %2, align 8, !tbaa !60
  %27 = getelementptr inbounds i16, ptr %26, i64 %25
  %28 = load i16, ptr %27, align 2, !tbaa !61
  %29 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = trunc i64 %25 to i32
  %33 = add nuw nsw i32 %29, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %33, ptr %34, align 4, !tbaa !46
  br label %40

35:                                               ; preds = %24
  %36 = add nuw nsw i64 %25, 1
  %37 = load i32, ptr %19, align 4, !tbaa !73
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %24, label %40, !llvm.loop !83

40:                                               ; preds = %35, %15, %31
  %41 = phi i32 [ %32, %31 ], [ -1, %15 ], [ -1, %35 ]
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !73
  %46 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %45)
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 %46, ptr %47, align 8, !tbaa !46
  br label %51

48:                                               ; preds = %40
  %49 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %41)
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 %49, ptr %50, align 8, !tbaa !46
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %41)
  br label %51

51:                                               ; preds = %48, %43
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %52, align 4, !tbaa !46
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %53, align 8, !tbaa !46
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime11findUTCSignEi(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !73
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %8 = sext i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %20
  %10 = phi i64 [ %8, %6 ], [ %21, %20 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !60
  %12 = getelementptr inbounds i16, ptr %11, i64 %10
  %13 = load i16, ptr %12, align 2, !tbaa !61
  %14 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = trunc i64 %10 to i32
  %18 = add nuw nsw i32 %14, 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %18, ptr %19, align 4, !tbaa !46
  br label %25

20:                                               ; preds = %9
  %21 = add nsw i64 %10, 1
  %22 = load i32, ptr %3, align 4, !tbaa !73
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %9, label %25, !llvm.loop !83

25:                                               ; preds = %20, %2, %16
  %26 = phi i32 [ %17, %16 ], [ -1, %2 ], [ -1, %20 ]
  ret i32 %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load i16, ptr %4, align 2, !tbaa !61
  %6 = icmp eq i16 %5, 45
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = zext i1 %6 to i32
  %10 = add nsw i32 %8, %9
  %11 = sub nsw i32 %1, %10
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %15 = load ptr, ptr %3, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 340, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %40

21:                                               ; preds = %2
  %22 = icmp eq i32 %11, 4
  br i1 %22, label %36, label %23

23:                                               ; preds = %21
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i16, ptr %4, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !61
  %27 = icmp eq i16 %26, 48
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %30 = load ptr, ptr %3, align 8, !tbaa !60
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 1470, i32 noundef 341, ptr noundef %30, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %40

36:                                               ; preds = %21, %23
  %37 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %9, i32 noundef %1)
  %38 = sub nsw i32 0, %37
  %39 = select i1 %6, i32 %38, i32 %37
  ret i32 %39

40:                                               ; preds = %34, %19
  %41 = phi ptr [ %29, %34 ], [ %14, %19 ]
  %42 = phi { ptr, i32 } [ %35, %34 ], [ %20, %19 ]
  tail call void @__cxa_free_exception(ptr %41) #16
  resume { ptr, i32 } %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %16

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %35, %58, %16
  %14 = phi ptr [ %30, %35 ], [ %53, %58 ], [ %9, %16 ]
  %15 = phi { ptr, i32 } [ %36, %35 ], [ %59, %58 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %13

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %19, align 8, !tbaa !72
  %20 = icmp eq i16 %6, 45
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, ptr %3, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !61
  %24 = icmp eq i16 %23, 45
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds i16, ptr %3, i64 4
  %27 = load i16, ptr %26, align 2, !tbaa !61
  %28 = icmp eq i16 %27, 45
  br i1 %28, label %37, label %29

29:                                               ; preds = %25, %21, %18
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %31 = load ptr, ptr %2, align 8, !tbaa !60
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 718, i32 noundef 325, ptr noundef %31, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %13

37:                                               ; preds = %25
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %38, align 8, !tbaa !46
  %39 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 2, i32 noundef 4)
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %39, ptr %40, align 4, !tbaa !46
  %41 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 5, i32 noundef 7)
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %41, ptr %42, align 8, !tbaa !46
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !73
  %45 = icmp sgt i32 %44, 7
  br i1 %45, label %46, label %63

46:                                               ; preds = %37
  %47 = load ptr, ptr %2, align 8, !tbaa !60
  %48 = getelementptr inbounds i16, ptr %47, i64 7
  %49 = load i16, ptr %48, align 2, !tbaa !61
  %50 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %54 = load ptr, ptr %2, align 8, !tbaa !60
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull @.str, i32 noundef 735, i32 noundef 325, ptr noundef %54, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %53, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

58:                                               ; preds = %52
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %13

60:                                               ; preds = %46
  %61 = add nuw nsw i32 %50, 1
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %61, ptr %62, align 4, !tbaa !46
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 7)
  br label %63

63:                                               ; preds = %60, %37
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_711XMLDateTime12getYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %17, align 8, !tbaa !46
  tail call void @_ZN11xercesc_2_711XMLDateTime13parseTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime12getYearMonthEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !72
  %4 = add nsw i32 %3, 7
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !73
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1085, i32 noundef 338, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %71

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = load i16, ptr %19, align 2, !tbaa !61
  %21 = icmp eq i16 %20, 45
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 %3, %22
  %24 = icmp slt i32 %23, %6
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = sext i32 %3 to i64
  %27 = zext i1 %21 to i64
  %28 = add nsw i64 %26, %27
  %29 = sext i32 %6 to i64
  br label %30

30:                                               ; preds = %25, %35
  %31 = phi i64 [ %28, %25 ], [ %36, %35 ]
  %32 = getelementptr inbounds i16, ptr %19, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !61
  %34 = icmp eq i16 %33, 45
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = add nsw i64 %31, 1
  %37 = icmp slt i64 %36, %29
  br i1 %37, label %30, label %40, !llvm.loop !86

38:                                               ; preds = %30
  %39 = trunc i64 %31 to i32
  br label %40

40:                                               ; preds = %38, %35, %17
  %41 = phi i32 [ -1, %17 ], [ %39, %38 ], [ -1, %35 ]
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %45 = load ptr, ptr %18, align 8, !tbaa !60
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull @.str, i32 noundef 1099, i32 noundef 339, ptr noundef %45, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %47)
          to label %48 unwind label %49

48:                                               ; preds = %43
  tail call void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %71

51:                                               ; preds = %40
  %52 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %41)
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 %52, ptr %53, align 8, !tbaa !46
  %54 = add nuw nsw i32 %41, 1
  store i32 %54, ptr %2, align 8, !tbaa !72
  %55 = add nsw i32 %41, 3
  %56 = load i32, ptr %5, align 4, !tbaa !73
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %60 = load ptr, ptr %18, align 8, !tbaa !60
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 342, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %62)
          to label %63 unwind label %64

63:                                               ; preds = %58
  tail call void @__cxa_throw(ptr nonnull %59, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %71

66:                                               ; preds = %51
  %67 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %54, i32 noundef %55)
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %67, ptr %68, align 4, !tbaa !46
  %69 = load i32, ptr %2, align 8, !tbaa !72
  %70 = add nsw i32 %69, 2
  store i32 %70, ptr %2, align 8, !tbaa !72
  ret void

71:                                               ; preds = %49, %64, %15
  %72 = phi ptr [ %44, %49 ], [ %59, %64 ], [ %9, %15 ]
  %73 = phi { ptr, i32 } [ %50, %49 ], [ %65, %64 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %72) #16
  resume { ptr, i32 } %73
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !61
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11)
          to label %12 unwind label %16

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %26, %38, %179, %285, %319, %331, %76, %16
  %14 = phi ptr [ %21, %26 ], [ %33, %38 ], [ %174, %179 ], [ %280, %285 ], [ %314, %319 ], [ %326, %331 ], [ %71, %76 ], [ %9, %16 ]
  %15 = phi { ptr, i32 } [ %27, %26 ], [ %39, %38 ], [ %180, %179 ], [ %286, %285 ], [ %320, %319 ], [ %332, %331 ], [ %77, %76 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %14) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %13

18:                                               ; preds = %5
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 1, ptr %19, align 8, !tbaa !72
  switch i16 %6, label %20 [
    i16 45, label %28
    i16 80, label %40
  ]

20:                                               ; preds = %18
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %22 = load ptr, ptr %2, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 782, i32 noundef 326, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %13

28:                                               ; preds = %18
  store i32 2, ptr %19, align 8, !tbaa !72
  %29 = getelementptr inbounds i16, ptr %3, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !61
  %31 = icmp eq i16 %30, 80
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %34 = load ptr, ptr %2, align 8, !tbaa !60
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 327, ptr noundef %34, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %36)
          to label %37 unwind label %38

37:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %13

40:                                               ; preds = %18, %28
  %41 = icmp eq i16 %6, 45
  %42 = select i1 %41, i32 3, i32 1
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %42, ptr %44, align 4, !tbaa !46
  %45 = select i1 %41, i32 -1, i32 1
  %46 = load i32, ptr %19, align 8, !tbaa !72
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = sext i32 %46 to i64
  br label %52

52:                                               ; preds = %50, %57
  %53 = phi i64 [ %51, %50 ], [ %58, %57 ]
  %54 = getelementptr inbounds i16, ptr %3, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !61
  %56 = icmp eq i16 %55, 45
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = add nsw i64 %53, 1
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %48, %59
  br i1 %60, label %63, label %52, !llvm.loop !86

61:                                               ; preds = %52
  %62 = trunc i64 %53 to i32
  br label %63

63:                                               ; preds = %61, %57, %40
  %64 = phi i32 [ -1, %40 ], [ %62, %61 ], [ -1, %57 ]
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = icmp slt i32 %46, %48
  br i1 %67, label %68, label %89

68:                                               ; preds = %66
  %69 = sext i32 %46 to i64
  br label %78

70:                                               ; preds = %63
  %71 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %72 = load ptr, ptr %2, align 8, !tbaa !60
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 328, ptr noundef %72, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %74)
          to label %75 unwind label %76

75:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

76:                                               ; preds = %70
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %13

78:                                               ; preds = %68, %83
  %79 = phi i64 [ %69, %68 ], [ %84, %83 ]
  %80 = getelementptr inbounds i16, ptr %3, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !61
  %82 = icmp eq i16 %81, 84
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = add nsw i64 %79, 1
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %48, %85
  br i1 %86, label %89, label %78, !llvm.loop !86

87:                                               ; preds = %78
  %88 = trunc i64 %79 to i32
  br label %89

89:                                               ; preds = %87, %83, %66
  %90 = phi i32 [ -1, %66 ], [ %88, %87 ], [ -1, %83 ]
  %91 = icmp eq i32 %90, -1
  %92 = select i1 %91, i32 %48, i32 %90
  %93 = icmp slt i32 %46, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = sext i32 %46 to i64
  br label %96

96:                                               ; preds = %94, %101
  %97 = phi i64 [ %95, %94 ], [ %102, %101 ]
  %98 = getelementptr inbounds i16, ptr %3, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !61
  %100 = icmp eq i16 %99, 89
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = add nsw i64 %97, 1
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %92, %103
  br i1 %104, label %107, label %96, !llvm.loop !86

105:                                              ; preds = %96
  %106 = trunc i64 %97 to i32
  br label %107

107:                                              ; preds = %105, %101, %89
  %108 = phi i32 [ -1, %89 ], [ %106, %105 ], [ -1, %101 ]
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %46, i32 noundef %108)
  %112 = mul nsw i32 %111, %45
  store i32 %112, ptr %43, align 8, !tbaa !46
  %113 = add nuw nsw i32 %108, 1
  store i32 %113, ptr %19, align 8, !tbaa !72
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i8 [ 1, %110 ], [ 0, %107 ]
  %116 = load i32, ptr %19, align 8, !tbaa !72
  %117 = icmp slt i32 %116, %92
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load ptr, ptr %2, align 8, !tbaa !60
  %120 = sext i32 %116 to i64
  br label %121

121:                                              ; preds = %118, %126
  %122 = phi i64 [ %120, %118 ], [ %127, %126 ]
  %123 = getelementptr inbounds i16, ptr %119, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !61
  %125 = icmp eq i16 %124, 77
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = add nsw i64 %122, 1
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %92, %128
  br i1 %129, label %132, label %121, !llvm.loop !86

130:                                              ; preds = %121
  %131 = trunc i64 %122 to i32
  br label %132

132:                                              ; preds = %130, %126, %114
  %133 = phi i32 [ -1, %114 ], [ %131, %130 ], [ -1, %126 ]
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %116, i32 noundef %133)
  %137 = mul nsw i32 %136, %45
  %138 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %137, ptr %138, align 4, !tbaa !46
  %139 = add nuw nsw i32 %133, 1
  store i32 %139, ptr %19, align 8, !tbaa !72
  br label %140

140:                                              ; preds = %135, %132
  %141 = phi i8 [ 1, %135 ], [ %115, %132 ]
  %142 = load i32, ptr %19, align 8, !tbaa !72
  %143 = icmp slt i32 %142, %92
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load ptr, ptr %2, align 8, !tbaa !60
  %146 = sext i32 %142 to i64
  br label %147

147:                                              ; preds = %144, %152
  %148 = phi i64 [ %146, %144 ], [ %153, %152 ]
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !61
  %151 = icmp eq i16 %150, 68
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = add nsw i64 %148, 1
  %154 = trunc i64 %153 to i32
  %155 = icmp eq i32 %92, %154
  br i1 %155, label %158, label %147, !llvm.loop !86

156:                                              ; preds = %147
  %157 = trunc i64 %148 to i32
  br label %158

158:                                              ; preds = %156, %152, %140
  %159 = phi i32 [ -1, %140 ], [ %157, %156 ], [ -1, %152 ]
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %142, i32 noundef %159)
  %163 = mul nsw i32 %162, %45
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %163, ptr %164, align 8, !tbaa !46
  %165 = add nuw nsw i32 %159, 1
  store i32 %165, ptr %19, align 8, !tbaa !72
  br label %166

166:                                              ; preds = %161, %158
  %167 = phi i8 [ 1, %161 ], [ %141, %158 ]
  %168 = load i32, ptr %47, align 4, !tbaa !73
  %169 = icmp ne i32 %168, %92
  %170 = load i32, ptr %19, align 8
  %171 = icmp eq i32 %170, %168
  %172 = select i1 %169, i1 true, i1 %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %166
  %174 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %175 = load ptr, ptr %2, align 8, !tbaa !60
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %177 = load ptr, ptr %176, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %174, ptr noundef nonnull @.str, i32 noundef 858, i32 noundef 329, ptr noundef %175, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %177)
          to label %178 unwind label %179

178:                                              ; preds = %173
  tail call void @__cxa_throw(ptr nonnull %174, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

179:                                              ; preds = %173
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %13

181:                                              ; preds = %166
  %182 = icmp eq i32 %168, %92
  br i1 %182, label %321, label %183

183:                                              ; preds = %181
  %184 = add nsw i32 %170, 1
  store i32 %184, ptr %19, align 8, !tbaa !72
  %185 = icmp slt i32 %184, %168
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load ptr, ptr %2, align 8, !tbaa !60
  %188 = sext i32 %184 to i64
  br label %189

189:                                              ; preds = %186, %194
  %190 = phi i64 [ %188, %186 ], [ %195, %194 ]
  %191 = getelementptr inbounds i16, ptr %187, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !61
  %193 = icmp eq i16 %192, 72
  br i1 %193, label %198, label %194

194:                                              ; preds = %189
  %195 = add nsw i64 %190, 1
  %196 = trunc i64 %195 to i32
  %197 = icmp eq i32 %168, %196
  br i1 %197, label %200, label %189, !llvm.loop !86

198:                                              ; preds = %189
  %199 = trunc i64 %190 to i32
  br label %200

200:                                              ; preds = %198, %194, %183
  %201 = phi i32 [ -1, %183 ], [ %199, %198 ], [ -1, %194 ]
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %208, label %203

203:                                              ; preds = %200
  %204 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %184, i32 noundef %201)
  %205 = mul nsw i32 %204, %45
  %206 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  store i32 %205, ptr %206, align 4, !tbaa !46
  %207 = add nuw nsw i32 %201, 1
  store i32 %207, ptr %19, align 8, !tbaa !72
  br label %208

208:                                              ; preds = %203, %200
  %209 = phi i8 [ 1, %203 ], [ %167, %200 ]
  %210 = load i32, ptr %19, align 8, !tbaa !72
  %211 = load i32, ptr %47, align 4, !tbaa !73
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load ptr, ptr %2, align 8, !tbaa !60
  %215 = sext i32 %210 to i64
  br label %216

216:                                              ; preds = %213, %221
  %217 = phi i64 [ %215, %213 ], [ %222, %221 ]
  %218 = getelementptr inbounds i16, ptr %214, i64 %217
  %219 = load i16, ptr %218, align 2, !tbaa !61
  %220 = icmp eq i16 %219, 77
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = add nsw i64 %217, 1
  %223 = trunc i64 %222 to i32
  %224 = icmp eq i32 %211, %223
  br i1 %224, label %227, label %216, !llvm.loop !86

225:                                              ; preds = %216
  %226 = trunc i64 %217 to i32
  br label %227

227:                                              ; preds = %225, %221, %208
  %228 = phi i32 [ -1, %208 ], [ %226, %225 ], [ -1, %221 ]
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  %231 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %210, i32 noundef %228)
  %232 = mul nsw i32 %231, %45
  %233 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  store i32 %232, ptr %233, align 8, !tbaa !46
  %234 = add nuw nsw i32 %228, 1
  store i32 %234, ptr %19, align 8, !tbaa !72
  br label %235

235:                                              ; preds = %230, %227
  %236 = phi i8 [ 1, %230 ], [ %209, %227 ]
  %237 = load i32, ptr %19, align 8, !tbaa !72
  %238 = load i32, ptr %47, align 4, !tbaa !73
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %235
  %241 = load ptr, ptr %2, align 8, !tbaa !60
  %242 = sext i32 %237 to i64
  br label %243

243:                                              ; preds = %240, %248
  %244 = phi i64 [ %242, %240 ], [ %249, %248 ]
  %245 = getelementptr inbounds i16, ptr %241, i64 %244
  %246 = load i16, ptr %245, align 2, !tbaa !61
  %247 = icmp eq i16 %246, 83
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = add nsw i64 %244, 1
  %250 = trunc i64 %249 to i32
  %251 = icmp eq i32 %238, %250
  br i1 %251, label %254, label %243, !llvm.loop !86

252:                                              ; preds = %243
  %253 = trunc i64 %244 to i32
  br label %254

254:                                              ; preds = %252, %248, %235
  %255 = phi i32 [ -1, %235 ], [ %253, %252 ], [ -1, %248 ]
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %301, label %257

257:                                              ; preds = %254
  %258 = icmp slt i32 %237, %255
  br i1 %258, label %259, label %273

259:                                              ; preds = %257
  %260 = load ptr, ptr %2, align 8, !tbaa !60
  %261 = sext i32 %237 to i64
  br label %262

262:                                              ; preds = %259, %267
  %263 = phi i64 [ %261, %259 ], [ %268, %267 ]
  %264 = getelementptr inbounds i16, ptr %260, i64 %263
  %265 = load i16, ptr %264, align 2, !tbaa !61
  %266 = icmp eq i16 %265, 46
  br i1 %266, label %271, label %267

267:                                              ; preds = %262
  %268 = add nsw i64 %263, 1
  %269 = trunc i64 %268 to i32
  %270 = icmp eq i32 %255, %269
  br i1 %270, label %273, label %262, !llvm.loop !86

271:                                              ; preds = %262
  %272 = trunc i64 %263 to i32
  br label %273

273:                                              ; preds = %271, %267, %257
  %274 = phi i32 [ -1, %257 ], [ %272, %271 ], [ -1, %267 ]
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %295, label %276

276:                                              ; preds = %273
  %277 = add nuw nsw i32 %274, 1
  %278 = icmp eq i32 %277, %255
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %281 = load ptr, ptr %2, align 8, !tbaa !60
  %282 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %283 = load ptr, ptr %282, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %280, ptr noundef nonnull @.str, i32 noundef 907, i32 noundef 332, ptr noundef %281, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %283)
          to label %284 unwind label %285

284:                                              ; preds = %279
  tail call void @__cxa_throw(ptr nonnull %280, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

285:                                              ; preds = %279
  %286 = landingpad { ptr, i32 }
          cleanup
  br label %13

287:                                              ; preds = %276
  %288 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %237, i32 noundef %274)
  %289 = mul nsw i32 %288, %45
  %290 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %289, ptr %290, align 4, !tbaa !46
  %291 = sitofp i32 %45 to double
  %292 = tail call noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %277, i32 noundef %255)
  %293 = fmul double %292, %291
  %294 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double %293, ptr %294, align 8, !tbaa !59
  br label %299

295:                                              ; preds = %273
  %296 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %237, i32 noundef %255)
  %297 = mul nsw i32 %296, %45
  %298 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %297, ptr %298, align 4, !tbaa !46
  br label %299

299:                                              ; preds = %295, %287
  %300 = add nuw nsw i32 %255, 1
  store i32 %300, ptr %19, align 8, !tbaa !72
  br label %301

301:                                              ; preds = %299, %254
  %302 = phi i8 [ 1, %299 ], [ %236, %254 ]
  %303 = load i32, ptr %19, align 8, !tbaa !72
  %304 = load i32, ptr %47, align 4, !tbaa !73
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %301
  %307 = load ptr, ptr %2, align 8, !tbaa !60
  %308 = add nsw i32 %303, -1
  store i32 %308, ptr %19, align 8, !tbaa !72
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i16, ptr %307, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !61
  %312 = icmp eq i16 %311, 84
  br i1 %312, label %313, label %321

313:                                              ; preds = %306, %301
  %314 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %315 = load ptr, ptr %2, align 8, !tbaa !60
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %317 = load ptr, ptr %316, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %314, ptr noundef nonnull @.str, i32 noundef 930, i32 noundef 330, ptr noundef %315, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %317)
          to label %318 unwind label %319

318:                                              ; preds = %313
  tail call void @__cxa_throw(ptr nonnull %314, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

319:                                              ; preds = %313
  %320 = landingpad { ptr, i32 }
          cleanup
  br label %13

321:                                              ; preds = %306, %181
  %322 = phi i8 [ %302, %306 ], [ %167, %181 ]
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %327 = load ptr, ptr %2, align 8, !tbaa !60
  %328 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %329 = load ptr, ptr %328, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %326, ptr noundef nonnull @.str, i32 noundef 939, i32 noundef 331, ptr noundef %327, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %329)
          to label %330 unwind label %331

330:                                              ; preds = %325
  tail call void @__cxa_throw(ptr nonnull %326, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

331:                                              ; preds = %325
  %332 = landingpad { ptr, i32 }
          cleanup
  br label %13

333:                                              ; preds = %321
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #11 align 2 !prof !41 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %15
  %11 = phi i64 [ %9, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds i16, ptr %8, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !61
  %14 = icmp eq i16 %13, %3
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = add nsw i64 %11, 1
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %21, label %10, !llvm.loop !86

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %15, %4
  %22 = phi i32 [ -1, %4 ], [ %20, %19 ], [ -1, %15 ]
  ret i32 %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = sext i32 %1 to i64
  br label %11

9:                                                ; preds = %26, %3
  %10 = phi double [ 0.000000e+00, %3 ], [ %33, %26 ]
  ret double %10

11:                                               ; preds = %5, %26
  %12 = phi i64 [ %8, %5 ], [ %35, %26 ]
  %13 = phi double [ 1.000000e+01, %5 ], [ %34, %26 ]
  %14 = phi double [ 0.000000e+00, %5 ], [ %33, %26 ]
  %15 = getelementptr inbounds i16, ptr %7, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !61
  %17 = add i16 %16, -58
  %18 = icmp ult i16 %17, -10
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 264, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #16
  resume { ptr, i32 } %25

26:                                               ; preds = %11
  %27 = zext nneg i16 %16 to i32
  %28 = icmp eq i16 %16, 48
  %29 = add nsw i32 %27, -48
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, %13
  %32 = select i1 %28, double 0.000000e+00, double %31
  %33 = fadd double %14, %32
  %34 = fmul double %13, 1.000000e+01
  %35 = add nsw i64 %12, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %9, label %11, !llvm.loop !87
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime34getDateTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %5, i16 noundef zeroext 46)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %12, %8 ], [ %18, %13 ]
  %15 = load i16, ptr %14, align 2, !tbaa !61
  %16 = add i16 %15, -58
  %17 = icmp ult i16 %16, -10
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  br i1 %17, label %19, label %13, !llvm.loop !88

19:                                               ; preds = %13, %19
  %20 = phi ptr [ %21, %19 ], [ %14, %13 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 -1
  %22 = load i16, ptr %21, align 2, !tbaa !61
  %23 = icmp eq i16 %22, 48
  br i1 %23, label %19, label %24, !llvm.loop !89

24:                                               ; preds = %19
  %25 = ptrtoint ptr %20 to i64
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi ptr [ null, %2 ], [ %12, %24 ]
  %28 = phi i64 [ 0, %2 ], [ %25, %24 ]
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %35 = load i32, ptr %34, align 4, !tbaa !46
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = icmp eq ptr %1, null
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8
  %41 = select i1 %38, ptr %40, ptr %1
  %42 = add nuw i64 %31, 21
  %43 = add nuw i64 %42, %37
  %44 = shl i64 %43, 32
  %45 = add i64 %44, 4294967296
  %46 = ashr exact i64 %45, 31
  %47 = load ptr, ptr %41, align 8, !tbaa !67
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %46)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %50, ptr %3, align 8, !tbaa !42
  %51 = load i32, ptr %33, align 8, !tbaa !46
  %52 = call noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %51), !range !90
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %26
  %55 = add i32 %32, 23
  %56 = add i32 %55, %52
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 1
  %59 = load ptr, ptr %41, align 8, !tbaa !67
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %58)
  %63 = shl nuw i32 %52, 1
  %64 = add nuw i32 %63, 8
  %65 = zext i32 %64 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %62, ptr noundef nonnull align 2 dereferenceable(1) %50, i64 %65, i1 false)
  %66 = load ptr, ptr %3, align 8, !tbaa !42
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %50 to i64
  %69 = sub i64 %67, %68
  %70 = getelementptr inbounds i8, ptr %62, i64 %69
  store ptr %70, ptr %3, align 8, !tbaa !42
  %71 = load ptr, ptr %41, align 8, !tbaa !67
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %50)
  br label %74

74:                                               ; preds = %54, %26
  %75 = phi ptr [ %62, %54 ], [ %50, %26 ]
  %76 = load ptr, ptr %3, align 8, !tbaa !42
  %77 = getelementptr inbounds i16, ptr %76, i64 1
  store ptr %77, ptr %3, align 8, !tbaa !42
  store i16 45, ptr %76, align 2, !tbaa !61
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %79 = load i32, ptr %78, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %79, i32 noundef 2)
  %80 = load ptr, ptr %3, align 8, !tbaa !42
  %81 = getelementptr inbounds i16, ptr %80, i64 1
  store ptr %81, ptr %3, align 8, !tbaa !42
  store i16 45, ptr %80, align 2, !tbaa !61
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %83 = load i32, ptr %82, align 8, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %83, i32 noundef 2)
  %84 = load ptr, ptr %3, align 8, !tbaa !42
  %85 = getelementptr inbounds i16, ptr %84, i64 1
  store ptr %85, ptr %3, align 8, !tbaa !42
  store i16 84, ptr %84, align 2, !tbaa !61
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %87 = load i32, ptr %86, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %87, i32 noundef 2)
  %88 = load i32, ptr %86, align 4, !tbaa !46
  %89 = icmp eq i32 %88, 24
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load ptr, ptr %3, align 8, !tbaa !42
  %92 = getelementptr inbounds i16, ptr %91, i64 -2
  store i16 48, ptr %92, align 2, !tbaa !61
  %93 = getelementptr inbounds i16, ptr %91, i64 -1
  store i16 48, ptr %93, align 2, !tbaa !61
  br label %94

94:                                               ; preds = %90, %74
  %95 = load ptr, ptr %3, align 8, !tbaa !42
  %96 = getelementptr inbounds i16, ptr %95, i64 1
  store ptr %96, ptr %3, align 8, !tbaa !42
  store i16 58, ptr %95, align 2, !tbaa !61
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %98 = load i32, ptr %97, align 8, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %98, i32 noundef 2)
  %99 = load ptr, ptr %3, align 8, !tbaa !42
  %100 = getelementptr inbounds i16, ptr %99, i64 1
  store ptr %100, ptr %3, align 8, !tbaa !42
  store i16 58, ptr %99, align 2, !tbaa !61
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %102 = load i32, ptr %101, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %102, i32 noundef 2)
  %103 = icmp eq i32 %32, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %94
  %105 = load ptr, ptr %3, align 8, !tbaa !42
  %106 = getelementptr inbounds i16, ptr %105, i64 1
  store ptr %106, ptr %3, align 8, !tbaa !42
  store i16 46, ptr %105, align 2, !tbaa !61
  %107 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %106, ptr noundef %27, i32 noundef %32)
  %108 = shl i64 %30, 31
  %109 = ashr i64 %108, 32
  %110 = getelementptr inbounds i16, ptr %106, i64 %109
  store ptr %110, ptr %3, align 8, !tbaa !42
  br label %111

111:                                              ; preds = %104, %94
  br i1 %36, label %112, label %115

112:                                              ; preds = %111
  %113 = load ptr, ptr %3, align 8, !tbaa !42
  %114 = getelementptr inbounds i16, ptr %113, i64 1
  store ptr %114, ptr %3, align 8, !tbaa !42
  store i16 90, ptr %113, align 2, !tbaa !61
  br label %115

115:                                              ; preds = %112, %111
  %116 = load ptr, ptr %3, align 8, !tbaa !42
  store i16 0, ptr %116, align 2, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %75
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDateTime17searchMiliSecondsERPtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !41 {
  store ptr null, ptr %2, align 8, !tbaa !42
  store ptr null, ptr %1, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %5, i16 noundef zeroext 46)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  store ptr %12, ptr %1, align 8, !tbaa !42
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %12, %8 ], [ %18, %13 ]
  %15 = load i16, ptr %14, align 2, !tbaa !61
  %16 = add i16 %15, -58
  %17 = icmp ult i16 %16, -10
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  br i1 %17, label %19, label %13, !llvm.loop !88

19:                                               ; preds = %13
  store ptr %14, ptr %2, align 8, !tbaa !42
  %20 = getelementptr inbounds i16, ptr %14, i64 -1
  %21 = load i16, ptr %20, align 2, !tbaa !61
  %22 = icmp eq i16 %21, 48
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %20, %19 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 -1
  %26 = load i16, ptr %25, align 2, !tbaa !61
  %27 = icmp eq i16 %26, 48
  br i1 %27, label %23, label %28, !llvm.loop !89

28:                                               ; preds = %23
  store ptr %24, ptr %2, align 8, !tbaa !42
  br label %29

29:                                               ; preds = %19, %28, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !41 {
  %4 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %2, ptr noundef nonnull %4, i32 noundef 15, i32 noundef 10, ptr noundef %6)
  %7 = load i16, ptr %4, align 16, !tbaa !61
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %11, %9 ], [ %4, %3 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !61
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !76

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %4 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %3, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %3 ]
  %22 = icmp eq i16 %7, 45
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr %1, align 8, !tbaa !42
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  store ptr %25, ptr %1, align 8, !tbaa !42
  store i16 %7, ptr %24, align 2, !tbaa !61
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 1, %23 ], [ 0, %20 ]
  %28 = sub i32 %27, %21
  %29 = add i32 %28, 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 8, !tbaa !42
  br label %40

33:                                               ; preds = %40
  store ptr %43, ptr %1, align 8, !tbaa !42
  br label %34

34:                                               ; preds = %33, %26
  %35 = icmp slt i32 %27, %21
  br i1 %35, label %36, label %55

36:                                               ; preds = %34
  %37 = load ptr, ptr %1, align 8, !tbaa !42
  %38 = zext nneg i32 %27 to i64
  %39 = zext i32 %21 to i64
  br label %46

40:                                               ; preds = %31, %40
  %41 = phi i32 [ %44, %40 ], [ 0, %31 ]
  %42 = phi ptr [ %43, %40 ], [ %32, %31 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  store i16 48, ptr %42, align 2, !tbaa !61
  %44 = add nuw nsw i32 %41, 1
  %45 = icmp eq i32 %44, %29
  br i1 %45, label %33, label %40, !llvm.loop !91

46:                                               ; preds = %36, %46
  %47 = phi i64 [ %38, %36 ], [ %52, %46 ]
  %48 = phi ptr [ %37, %36 ], [ %51, %46 ]
  %49 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %47
  %50 = load i16, ptr %49, align 2, !tbaa !61
  %51 = getelementptr inbounds i16, ptr %48, i64 1
  store i16 %50, ptr %48, align 2, !tbaa !61
  %52 = add nuw nsw i64 %47, 1
  %53 = icmp eq i64 %52, %39
  br i1 %53, label %54, label %46, !llvm.loop !92

54:                                               ; preds = %46
  store ptr %51, ptr %1, align 8, !tbaa !42
  br label %55

55:                                               ; preds = %54, %34
  %56 = icmp sgt i32 %21, 4
  %57 = add nsw i32 %21, -4
  %58 = select i1 %56, i32 %57, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %58
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !41 {
  %5 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %2, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 10, ptr noundef %7)
  %8 = load i16, ptr %5, align 16, !tbaa !61
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %12, %10 ], [ %5, %4 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !61
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !76

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %5 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %4, %15
  %22 = phi i32 [ %20, %15 ], [ 0, %4 ]
  %23 = sub nsw i32 %3, %22
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %1, align 8, !tbaa !42
  br label %33

27:                                               ; preds = %33
  store ptr %36, ptr %1, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %27, %21
  %29 = icmp sgt i32 %22, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %28
  %31 = load ptr, ptr %1, align 8, !tbaa !42
  %32 = zext nneg i32 %22 to i64
  br label %39

33:                                               ; preds = %25, %33
  %34 = phi i32 [ %37, %33 ], [ 0, %25 ]
  %35 = phi ptr [ %36, %33 ], [ %26, %25 ]
  %36 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 48, ptr %35, align 2, !tbaa !61
  %37 = add nuw nsw i32 %34, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %27, label %33, !llvm.loop !93

39:                                               ; preds = %30, %39
  %40 = phi i64 [ 0, %30 ], [ %45, %39 ]
  %41 = phi ptr [ %31, %30 ], [ %44, %39 ]
  %42 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %40
  %43 = load i16, ptr %42, align 2, !tbaa !61
  %44 = getelementptr inbounds i16, ptr %41, i64 1
  store i16 %43, ptr %41, align 2, !tbaa !61
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %47, label %39, !llvm.loop !94

47:                                               ; preds = %39
  store ptr %44, ptr %1, align 8, !tbaa !42
  br label %48

48:                                               ; preds = %47, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getDateCanonicalRepresentationEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %6 = load i32, ptr %5, align 4, !tbaa !46
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 11, i32 12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  %16 = add nuw nsw i32 %8, 5
  %17 = select i1 %15, i32 %8, i32 %16
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr %20, ptr %1
  %22 = shl nuw nsw i32 %17, 1
  %23 = zext nneg i32 %22 to i64
  %24 = load ptr, ptr %21, align 8, !tbaa !67
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %23)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %27, ptr %3, align 8, !tbaa !42
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %29 = load i32, ptr %28, align 4, !tbaa !46
  %30 = icmp slt i32 %29, 12
  br i1 %30, label %31, label %79

31:                                               ; preds = %2
  %32 = load i32, ptr %4, align 8, !tbaa !46
  %33 = call noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %32), !range !90
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = add nuw nsw i32 %33, %17
  %37 = shl nuw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = load ptr, ptr %21, align 8, !tbaa !67
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %38)
  %43 = shl nuw i32 %33, 1
  %44 = add nuw i32 %43, 8
  %45 = zext i32 %44 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %42, ptr noundef nonnull align 2 dereferenceable(1) %27, i64 %45, i1 false)
  %46 = load ptr, ptr %3, align 8, !tbaa !42
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %27 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds i8, ptr %42, i64 %49
  store ptr %50, ptr %3, align 8, !tbaa !42
  %51 = load ptr, ptr %21, align 8, !tbaa !67
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %27)
  br label %54

54:                                               ; preds = %35, %31
  %55 = phi ptr [ %42, %35 ], [ %27, %31 ]
  %56 = load ptr, ptr %3, align 8, !tbaa !42
  %57 = getelementptr inbounds i16, ptr %56, i64 1
  store ptr %57, ptr %3, align 8, !tbaa !42
  store i16 45, ptr %56, align 2, !tbaa !61
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %59 = load i32, ptr %58, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %59, i32 noundef 2)
  %60 = load ptr, ptr %3, align 8, !tbaa !42
  %61 = getelementptr inbounds i16, ptr %60, i64 1
  store ptr %61, ptr %3, align 8, !tbaa !42
  store i16 45, ptr %60, align 2, !tbaa !61
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %63 = load i32, ptr %62, align 8, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %63, i32 noundef 2)
  br i1 %7, label %183, label %64

64:                                               ; preds = %54
  %65 = load i32, ptr %9, align 8, !tbaa !46
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %12, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  %70 = load ptr, ptr %3, align 8, !tbaa !42
  %71 = getelementptr inbounds i16, ptr %70, i64 1
  store ptr %71, ptr %3, align 8, !tbaa !42
  br i1 %69, label %78, label %72

72:                                               ; preds = %64
  store i16 45, ptr %70, align 2, !tbaa !61
  %73 = load i32, ptr %28, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %73, i32 noundef 2)
  %74 = load ptr, ptr %3, align 8, !tbaa !42
  %75 = getelementptr inbounds i16, ptr %74, i64 1
  store ptr %75, ptr %3, align 8, !tbaa !42
  store i16 58, ptr %74, align 2, !tbaa !61
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %77 = load i32, ptr %76, align 8, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %77, i32 noundef 2)
  br label %183

78:                                               ; preds = %64
  store i16 90, ptr %70, align 2, !tbaa !61
  br label %183

79:                                               ; preds = %2
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %81 = load i32, ptr %80, align 8, !tbaa !46
  %82 = icmp ne i32 %81, 0
  %83 = sub nsw i32 60, %81
  %84 = sext i1 %82 to i32
  %85 = sub i32 %84, %29
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %87 = load i32, ptr %86, align 8, !tbaa !46
  %88 = add nsw i32 %87, 1
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %90 = load i32, ptr %89, align 4, !tbaa !46
  %91 = load i32, ptr %4, align 8, !tbaa !46
  br label %92

92:                                               ; preds = %144, %79
  %93 = phi i32 [ %88, %79 ], [ %145, %144 ]
  %94 = phi i32 [ %90, %79 ], [ %146, %144 ]
  %95 = phi i32 [ %91, %79 ], [ %147, %144 ]
  switch i32 %94, label %106 [
    i32 11, label %107
    i32 9, label %107
    i32 6, label %107
    i32 4, label %107
    i32 2, label %96
  ]

96:                                               ; preds = %92
  %97 = and i32 %95, 3
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = srem i32 %95, 100
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = srem i32 %95, 400
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 29, i32 28
  br label %107

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %92, %92, %92, %96, %99, %102, %92, %106
  %108 = phi i32 [ 31, %106 ], [ 30, %92 ], [ 28, %96 ], [ 29, %99 ], [ %105, %102 ], [ 30, %92 ], [ 30, %92 ], [ 30, %92 ]
  %109 = icmp slt i32 %93, 1
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  switch i32 %94, label %121 [
    i32 12, label %122
    i32 10, label %122
    i32 7, label %122
    i32 5, label %122
    i32 3, label %111
  ]

111:                                              ; preds = %110
  %112 = and i32 %95, 3
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = srem i32 %95, 100
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = srem i32 %95, 400
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 29, i32 28
  br label %122

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %110, %110, %110, %111, %114, %117, %110, %121
  %123 = phi i32 [ 31, %121 ], [ 30, %110 ], [ 28, %111 ], [ 29, %114 ], [ %120, %117 ], [ 30, %110 ], [ 30, %110 ], [ 30, %110 ]
  %124 = add nsw i32 %123, %93
  br label %129

125:                                              ; preds = %107
  %126 = icmp sgt i32 %93, %108
  br i1 %126, label %127, label %144

127:                                              ; preds = %125
  %128 = sub nsw i32 %93, %108
  br label %129

129:                                              ; preds = %127, %122
  %130 = phi i32 [ -1, %122 ], [ 1, %127 ]
  %131 = phi i32 [ %124, %122 ], [ %128, %127 ]
  %132 = add nsw i32 %130, %94
  %133 = add nsw i32 %132, -1
  %134 = tail call i64 @div(i32 noundef %133, i32 noundef 12) #17
  %135 = trunc i64 %134 to i32
  %136 = mul i32 %135, -12
  %137 = add i32 %136, %132
  %138 = icmp slt i32 %137, 1
  %139 = add nsw i32 %137, 12
  %140 = select i1 %138, i32 %139, i32 %137
  %141 = sext i1 %138 to i32
  %142 = add i32 %95, %135
  %143 = add i32 %142, %141
  br label %144

144:                                              ; preds = %125, %129
  %145 = phi i32 [ %131, %129 ], [ %93, %125 ]
  %146 = phi i32 [ %140, %129 ], [ %94, %125 ]
  %147 = phi i32 [ %143, %129 ], [ %95, %125 ]
  %148 = phi i1 [ true, %129 ], [ false, %125 ]
  br i1 %148, label %92, label %149

149:                                              ; preds = %144
  %150 = select i1 %82, i32 %83, i32 0
  %151 = add i32 %85, 24
  %152 = call noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %147), !range !90
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %149
  %155 = add nuw nsw i32 %152, %17
  %156 = shl nuw i32 %155, 1
  %157 = zext i32 %156 to i64
  %158 = load ptr, ptr %21, align 8, !tbaa !67
  %159 = getelementptr inbounds ptr, ptr %158, i64 2
  %160 = load ptr, ptr %159, align 8
  %161 = tail call noundef ptr %160(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %157)
  %162 = shl nuw i32 %152, 1
  %163 = add nuw i32 %162, 8
  %164 = zext i32 %163 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %161, ptr noundef nonnull align 2 dereferenceable(1) %27, i64 %164, i1 false)
  %165 = load ptr, ptr %3, align 8, !tbaa !42
  %166 = ptrtoint ptr %165 to i64
  %167 = ptrtoint ptr %27 to i64
  %168 = sub i64 %166, %167
  %169 = getelementptr inbounds i8, ptr %161, i64 %168
  store ptr %169, ptr %3, align 8, !tbaa !42
  %170 = load ptr, ptr %21, align 8, !tbaa !67
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  tail call void %172(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %27)
  br label %173

173:                                              ; preds = %154, %149
  %174 = phi ptr [ %161, %154 ], [ %27, %149 ]
  %175 = load ptr, ptr %3, align 8, !tbaa !42
  %176 = getelementptr inbounds i16, ptr %175, i64 1
  store ptr %176, ptr %3, align 8, !tbaa !42
  store i16 45, ptr %175, align 2, !tbaa !61
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %146, i32 noundef 2)
  %177 = load ptr, ptr %3, align 8, !tbaa !42
  %178 = getelementptr inbounds i16, ptr %177, i64 1
  store ptr %178, ptr %3, align 8, !tbaa !42
  store i16 45, ptr %177, align 2, !tbaa !61
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %145, i32 noundef 2)
  %179 = load ptr, ptr %3, align 8, !tbaa !42
  %180 = getelementptr inbounds i16, ptr %179, i64 1
  store ptr %180, ptr %3, align 8, !tbaa !42
  store i16 43, ptr %179, align 2, !tbaa !61
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %151, i32 noundef 2)
  %181 = load ptr, ptr %3, align 8, !tbaa !42
  %182 = getelementptr inbounds i16, ptr %181, i64 1
  store ptr %182, ptr %3, align 8, !tbaa !42
  store i16 58, ptr %181, align 2, !tbaa !61
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %150, i32 noundef 2)
  br label %183

183:                                              ; preds = %54, %78, %72, %173
  %184 = phi ptr [ %174, %173 ], [ %55, %72 ], [ %55, %78 ], [ %55, %54 ]
  %185 = load ptr, ptr %3, align 8, !tbaa !42
  store i16 0, ptr %185, align 2, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %184
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %5, i16 noundef zeroext 46)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !60
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %12, %8 ], [ %18, %13 ]
  %15 = load i16, ptr %14, align 2, !tbaa !61
  %16 = add i16 %15, -58
  %17 = icmp ult i16 %16, -10
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  br i1 %17, label %19, label %13, !llvm.loop !88

19:                                               ; preds = %13, %19
  %20 = phi ptr [ %21, %19 ], [ %14, %13 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 -1
  %22 = load i16, ptr %21, align 2, !tbaa !61
  %23 = icmp eq i16 %22, 48
  br i1 %23, label %19, label %24, !llvm.loop !89

24:                                               ; preds = %19
  %25 = ptrtoint ptr %20 to i64
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi ptr [ null, %2 ], [ %12, %24 ]
  %28 = phi i64 [ 0, %2 ], [ %25, %24 ]
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = icmp eq ptr %1, null
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8
  %40 = select i1 %37, ptr %39, ptr %1
  %41 = add nuw i64 %31, 10
  %42 = add nuw i64 %41, %36
  %43 = shl i64 %42, 32
  %44 = add i64 %43, 4294967296
  %45 = ashr exact i64 %44, 31
  %46 = load ptr, ptr %40, align 8, !tbaa !67
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %45)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %49, ptr %3, align 8, !tbaa !42
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %51 = load i32, ptr %50, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %51, i32 noundef 2)
  %52 = load i32, ptr %50, align 4, !tbaa !46
  %53 = icmp eq i32 %52, 24
  br i1 %53, label %54, label %58

54:                                               ; preds = %26
  %55 = load ptr, ptr %3, align 8, !tbaa !42
  %56 = getelementptr inbounds i16, ptr %55, i64 -2
  store i16 48, ptr %56, align 2, !tbaa !61
  %57 = getelementptr inbounds i16, ptr %55, i64 -1
  store i16 48, ptr %57, align 2, !tbaa !61
  br label %58

58:                                               ; preds = %54, %26
  %59 = load ptr, ptr %3, align 8, !tbaa !42
  %60 = getelementptr inbounds i16, ptr %59, i64 1
  store ptr %60, ptr %3, align 8, !tbaa !42
  store i16 58, ptr %59, align 2, !tbaa !61
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %62 = load i32, ptr %61, align 8, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %62, i32 noundef 2)
  %63 = load ptr, ptr %3, align 8, !tbaa !42
  %64 = getelementptr inbounds i16, ptr %63, i64 1
  store ptr %64, ptr %3, align 8, !tbaa !42
  store i16 58, ptr %63, align 2, !tbaa !61
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %66 = load i32, ptr %65, align 4, !tbaa !46
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %66, i32 noundef 2)
  %67 = icmp eq i32 %32, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load ptr, ptr %3, align 8, !tbaa !42
  %70 = getelementptr inbounds i16, ptr %69, i64 1
  store ptr %70, ptr %3, align 8, !tbaa !42
  store i16 46, ptr %69, align 2, !tbaa !61
  %71 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %70, ptr noundef %27, i32 noundef %32)
  %72 = shl i64 %30, 31
  %73 = ashr i64 %72, 32
  %74 = getelementptr inbounds i16, ptr %70, i64 %73
  store ptr %74, ptr %3, align 8, !tbaa !42
  br label %75

75:                                               ; preds = %68, %58
  br i1 %35, label %76, label %79

76:                                               ; preds = %75
  %77 = load ptr, ptr %3, align 8, !tbaa !42
  %78 = getelementptr inbounds i16, ptr %77, i64 1
  store ptr %78, ptr %3, align 8, !tbaa !42
  store i16 90, ptr %77, align 2, !tbaa !61
  br label %79

79:                                               ; preds = %76, %75
  %80 = load ptr, ptr %3, align 8, !tbaa !42
  store i16 0, ptr %80, align 2, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %49
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711XMLDateTime12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %0)
  invoke void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #16
  resume { ptr, i32 } %5
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XMLDateTime14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !41 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711XMLDateTime12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_711XMLDateTime16classXMLDateTimeE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !41 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %4 = load i16, ptr %1, align 8, !tbaa !95
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %11, %6 ], [ 0, %2 ]
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %9)
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %6, !llvm.loop !98

13:                                               ; preds = %6, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %6 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %16)
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %13, label %20, !llvm.loop !99

20:                                               ; preds = %13
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %22)
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %25)
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !74
  %31 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE, align 1, !tbaa !100, !range !57, !noundef !58
  %32 = icmp ne i8 %31, 0
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %28, i32 noundef %30, i1 noundef zeroext %32)
  br label %54

33:                                               ; preds = %2, %33
  %34 = phi i64 [ %37, %33 ], [ 0, %2 ]
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %34
  %36 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %35)
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %33, !llvm.loop !101

39:                                               ; preds = %33, %39
  %40 = phi i64 [ %43, %39 ], [ 0, %33 ]
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 %40
  %42 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %41)
  %43 = add nuw nsw i64 %40, 1
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %39, label %45, !llvm.loop !102

45:                                               ; preds = %39
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %47 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %46)
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %49 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !tbaa !46
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %52 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE, align 1, !tbaa !100, !range !57, !noundef !58
  %53 = icmp ne i8 %52, 0
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 4 dereferenceable(4) %51, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %53)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %54

54:                                               ; preds = %45, %20
  ret void
}

declare void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #9

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723SchemaDateTimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #9

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723SchemaDateTimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni30fgSchemaDateTimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723SchemaDateTimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723SchemaDateTimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !67
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #9

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !67
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xercesc_2_711XMLDateTimeD2Ev, ptr @_ZN11xercesc_2_79XMLNumberD2Ev, i64 29629}
!36 = !{ptr @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLNumberC2Ev, i64 29629}
!37 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, i64 29629}
!38 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, i64 29629}
!39 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime9normalizeEv, i64 29629}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !44, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !56, i64 72}
!52 = !{!"_ZTSN11xercesc_2_711XMLDateTimeE", !53, i64 0, !44, i64 8, !44, i64 40, !47, i64 48, !47, i64 52, !47, i64 56, !55, i64 64, !56, i64 72, !43, i64 80, !43, i64 88}
!53 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !54, i64 0}
!54 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!55 = !{!"double", !44, i64 0}
!56 = !{!"bool", !44, i64 0}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!52, !55, i64 64}
!60 = !{!52, !43, i64 80}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !44, i64 0}
!63 = distinct !{!63, !49, !50}
!64 = !{!"function_entry_count", i64 29629}
!65 = !{!"branch_weights", i32 29629, i32 0}
!66 = distinct !{!66, !49, !50}
!67 = !{!68, !68, i64 0}
!68 = !{!"vtable pointer", !45, i64 0}
!69 = !{!"branch_weights", i32 0, i32 29629}
!70 = !{!52, !43, i64 88}
!71 = !{!"VP", i32 0, i64 29629, i64 -7405368087501025645, i64 29629}
!72 = !{!52, !47, i64 48}
!73 = !{!52, !47, i64 52}
!74 = !{!52, !47, i64 56}
!75 = !{!"branch_weights", i32 29629, i32 207403}
!76 = distinct !{!76, !49, !50}
!77 = !{!"VP", i32 0, i64 29629, i64 8345045103670217670, i64 29629}
!78 = !{!"VP", i32 1, i64 29629, i64 17, i64 29629}
!79 = distinct !{!79, !49, !50}
!80 = !{!"branch_weights", i32 0, i32 177774}
!81 = !{!"branch_weights", i32 88886, i32 88888}
!82 = distinct !{!82, !49, !50}
!83 = distinct !{!83, !49, !50}
!84 = !{!"branch_weights", i32 29629, i32 0, i32 0, i32 0, i32 0, i32 0}
!85 = !{!"branch_weights", i32 88886, i32 1}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = distinct !{!88, !49, !50}
!89 = distinct !{!89, !49, !50}
!90 = !{i32 0, i32 2147483644}
!91 = distinct !{!91, !49, !50}
!92 = distinct !{!92, !49, !50}
!93 = distinct !{!93, !49, !50}
!94 = distinct !{!94, !49, !50}
!95 = !{!96, !62, i64 0}
!96 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !62, i64 0, !62, i64 2, !43, i64 8, !43, i64 16, !43, i64 24, !97, i64 32, !97, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !47, i64 96}
!97 = !{!"long", !44, i64 0}
!98 = distinct !{!98, !49, !50}
!99 = distinct !{!99, !49, !50}
!100 = !{!56, !56, i64 0}
!101 = distinct !{!101, !49, !50}
!102 = distinct !{!102, !49, !50}
!103 = !{!104, !43, i64 40}
!104 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !105, i64 8, !43, i64 16, !47, i64 24, !43, i64 32, !43, i64 40}
!105 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !44, i64 0}
