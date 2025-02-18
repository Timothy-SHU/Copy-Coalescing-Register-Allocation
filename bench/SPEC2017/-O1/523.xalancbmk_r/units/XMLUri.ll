; ModuleID = 'XMLUri.cpp'
source_filename = "XMLUri.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLUri" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

@_ZN11xercesc_2_76XMLUri19RESERVED_CHARACTERSE = dso_local constant [13 x i16] [i16 59, i16 47, i16 63, i16 58, i16 64, i16 38, i16 61, i16 43, i16 36, i16 44, i16 91, i16 93, i16 0], align 16
@_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE = dso_local constant [10 x i16] [i16 45, i16 95, i16 46, i16 33, i16 126, i16 42, i16 39, i16 40, i16 41, i16 0], align 16
@_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE = dso_local constant [22 x i16] [i16 45, i16 95, i16 46, i16 33, i16 126, i16 42, i16 39, i16 40, i16 41, i16 59, i16 47, i16 63, i16 58, i16 64, i16 38, i16 61, i16 43, i16 36, i16 44, i16 91, i16 93, i16 0], align 16
@_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE = dso_local constant [4 x i16] [i16 43, i16 45, i16 46, i16 0], align 2
@_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE = dso_local constant [8 x i16] [i16 59, i16 58, i16 38, i16 61, i16 43, i16 36, i16 46, i16 0], align 16
@_ZN11xercesc_2_76XMLUri19REG_NAME_CHARACTERSE = dso_local constant [9 x i16] [i16 36, i16 44, i16 59, i16 58, i16 64, i16 38, i16 61, i16 43, i16 0], align 16
@_ZN11xercesc_2_76XMLUri15PATH_CHARACTERSE = dso_local constant [10 x i16] [i16 59, i16 47, i16 58, i16 64, i16 38, i16 61, i16 43, i16 36, i16 44, i16 0], align 16
@_ZTVN11xercesc_2_76XMLUriE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76XMLUriE, ptr @_ZN11xercesc_2_76XMLUriD2Ev, ptr @_ZN11xercesc_2_76XMLUriD0Ev, ptr @_ZNK11xercesc_2_76XMLUri14isSerializableEv, ptr @_ZN11xercesc_2_76XMLUri9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_76XMLUri12getProtoTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [11 x i8] c"XMLUri.cpp\00", align 1
@_ZN11xercesc_2_7L13errMsg_PARAMSE = internal constant [11 x i16] [i16 80, i16 97, i16 114, i16 97, i16 109, i16 101, i16 116, i16 101, i16 114, i16 115, i16 0], align 16
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L11errMsg_PATHE = internal constant [5 x i16] [i16 80, i16 97, i16 116, i16 104, i16 0], align 2
@_ZN11xercesc_2_7L12DOUBLE_SLASHE = internal constant [3 x i16] [i16 47, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L12SINGLE_SLASHE = internal constant [2 x i16] [i16 47, i16 0], align 2
@_ZN11xercesc_2_7L15SLASH_DOT_SLASHE = internal constant [4 x i16] [i16 47, i16 46, i16 47, i16 0], align 2
@_ZN11xercesc_2_7L9SLASH_DOTE = internal constant [3 x i16] [i16 47, i16 46, i16 0], align 2
@_ZN11xercesc_2_7L18SLASH_DOTDOT_SLASHE = internal constant [5 x i16] [i16 47, i16 46, i16 46, i16 47, i16 0], align 2
@_ZN11xercesc_2_7L12SLASH_DOTDOTE = internal constant [4 x i16] [i16 47, i16 46, i16 46, i16 0], align 2
@_ZN11xercesc_2_7L17SCHEME_SEPARATORSE = internal constant [5 x i16] [i16 58, i16 47, i16 63, i16 35, i16 0], align 2
@_ZN11xercesc_2_7L12errMsg_QUERYE = internal constant [6 x i16] [i16 81, i16 117, i16 101, i16 114, i16 121, i16 0], align 2
@_ZN11xercesc_2_7L15errMsg_FRAGMENTE = internal constant [9 x i16] [i16 70, i16 114, i16 97, i16 103, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L13errMsg_SCHEMEE = internal constant [7 x i16] [i16 83, i16 99, i16 104, i16 101, i16 109, i16 101, i16 0], align 2
@_ZN11xercesc_2_7L15errMsg_USERINFOE = internal constant [9 x i16] [i16 85, i16 115, i16 101, i16 114, i16 105, i16 110, i16 102, i16 111, i16 0], align 16
@_ZN11xercesc_2_7L11errMsg_HOSTE = internal constant [5 x i16] [i16 72, i16 111, i16 115, i16 116, i16 0], align 2
@_ZN11xercesc_2_7L11errMsg_PORTE = internal constant [5 x i16] [i16 80, i16 111, i16 114, i16 116, i16 0], align 2
@_ZN11xercesc_2_7L14errMsg_REGNAMEE = internal constant [8 x i16] [i16 82, i16 101, i16 103, i16 78, i16 97, i16 109, i16 101, i16 0], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"XMLUri\00", align 1
@_ZN11xercesc_2_76XMLUri11classXMLUriE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_76XMLUri12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_76XMLUriE = dso_local constant [23 x i8] c"N11xercesc_2_76XMLUriE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_76XMLUriE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76XMLUriE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16

@_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2EPKS0_PKtPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLUriC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2ERKS0_
@_ZN11xercesc_2_76XMLUriD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_76XMLUriD2Ev
@_ZN11xercesc_2_76XMLUriC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2EPNS_13MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_76XMLUri10initializeEPKS0_PKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null, ptr noundef %1)
          to label %17 unwind label %7

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %9 = extractvalue { ptr, i32 } %8, 1
  %10 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = extractvalue { ptr, i32 } %8, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #16
  invoke void @__cxa_rethrow() #17
          to label %32 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %29

17:                                               ; preds = %3
  ret void

18:                                               ; preds = %15, %7
  %19 = phi ptr [ null, %15 ], [ @_ZN11xercesc_2_76XMLUri7cleanUpEv, %7 ]
  %20 = phi ptr [ null, %15 ], [ %0, %7 ]
  %21 = phi { ptr, i32 } [ %16, %15 ], [ %8, %7 ]
  %22 = icmp eq ptr %20, null
  %23 = or i1 %11, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(88) %20)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #18
  unreachable

28:                                               ; preds = %18, %24
  resume { ptr, i32 } %21

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #18
  unreachable

32:                                               ; preds = %12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %2, ptr noundef %7)
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %9, ptr noundef %14)
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %16, ptr noundef %21)
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %23, ptr noundef %28)
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %30, ptr noundef %35)
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %37, ptr noundef %42)
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %44, ptr noundef %49)
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %51, ptr noundef %53)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri10initializeEPKS0_PKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %2, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %3
  %15 = load i16, ptr %2, align 2, !tbaa !71
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %2, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !71
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !73

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %2 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !54
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %2, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %3, %28
  %35 = phi ptr [ %33, %28 ], [ null, %3 ]
  tail call void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %35)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %36 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %35, ptr %4, align 8, !tbaa !76
  %37 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !78
  %38 = icmp eq ptr %35, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load i16, ptr %35, align 2, !tbaa !71
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %44, %42 ], [ %35, %39 ]
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !71
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %42, !llvm.loop !73

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i64
  %49 = ptrtoint ptr %35 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 1
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %34, %39, %47
  %54 = phi i32 [ %52, %47 ], [ 0, %39 ], [ 0, %34 ]
  %55 = icmp eq ptr %1, null
  %56 = icmp eq i32 %54, 0
  %57 = or i1 %38, %56
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %61 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull @.str, i32 noundef 417, i32 noundef 266, ptr noundef nonnull @_ZN11xercesc_2_7L13errMsg_PARAMSE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %61)
          to label %62 unwind label %65

62:                                               ; preds = %59
  invoke void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %957 unwind label %63

63:                                               ; preds = %68, %62
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %955

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %60) #16
  br label %955

67:                                               ; preds = %53
  br i1 %57, label %68, label %69

68:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %950 unwind label %63

69:                                               ; preds = %67
  %70 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %35, i16 noundef zeroext 58)
          to label %71 unwind label %99

71:                                               ; preds = %69
  %72 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %35, i16 noundef zeroext 47)
          to label %73 unwind label %101

73:                                               ; preds = %71
  %74 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %35, i16 noundef zeroext 63)
          to label %75 unwind label %103

75:                                               ; preds = %73
  %76 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %35, i16 noundef zeroext 35)
          to label %77 unwind label %105

77:                                               ; preds = %75
  %78 = icmp slt i32 %70, 1
  br i1 %78, label %91, label %79

79:                                               ; preds = %77
  %80 = icmp sgt i32 %70, %72
  %81 = icmp ne i32 %72, -1
  %82 = and i1 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = icmp sgt i32 %70, %74
  %85 = icmp ne i32 %74, -1
  %86 = and i1 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = icmp sgt i32 %70, %76
  %89 = icmp ne i32 %76, -1
  %90 = and i1 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87, %83, %79, %77
  %92 = icmp eq i32 %70, 0
  %93 = icmp ne i32 %76, 0
  %94 = and i1 %55, %93
  %95 = or i1 %92, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %91
  %97 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %98 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 272, ptr noundef %98)
          to label %144 unwind label %107

99:                                               ; preds = %69
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %955

101:                                              ; preds = %71
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %955

103:                                              ; preds = %73
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %955

105:                                              ; preds = %144, %109, %75
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %955

107:                                              ; preds = %96
  %108 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %97) #16
  br label %955

109:                                              ; preds = %87
  invoke void @_ZN11xercesc_2_76XMLUri16initializeSchemeEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %35)
          to label %110 unwind label %105

110:                                              ; preds = %109
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !64
  %113 = icmp eq ptr %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %112, align 2, !tbaa !71
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114, %117
  %118 = phi ptr [ %119, %117 ], [ %112, %114 ]
  %119 = getelementptr inbounds i16, ptr %118, i64 1
  %120 = load i16, ptr %119, align 2, !tbaa !71
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %117, !llvm.loop !73

122:                                              ; preds = %117
  %123 = ptrtoint ptr %119 to i64
  %124 = ptrtoint ptr %112 to i64
  %125 = sub i64 %123, %124
  %126 = lshr exact i64 %125, 1
  %127 = trunc i64 %126 to i32
  br label %128

128:                                              ; preds = %110, %114, %122
  %129 = phi i32 [ %127, %122 ], [ 0, %114 ], [ 0, %110 ]
  %130 = add i32 %129, 1
  br label %131

131:                                              ; preds = %91, %128
  %132 = phi i1 [ true, %128 ], [ false, %91 ]
  %133 = phi i32 [ %130, %128 ], [ 0, %91 ]
  %134 = icmp eq i32 %133, %54
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  br i1 %132, label %136, label %149

136:                                              ; preds = %135
  %137 = sext i32 %133 to i64
  %138 = getelementptr inbounds i16, ptr %35, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !71
  %140 = icmp eq i16 %139, 35
  br i1 %140, label %141, label %149

141:                                              ; preds = %136, %131
  %142 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %143 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %142, ptr noundef nonnull @.str, i32 noundef 460, i32 noundef 266, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %143)
          to label %144 unwind label %147

144:                                              ; preds = %96, %141
  %145 = phi ptr [ %142, %141 ], [ %97, %96 ]
  invoke void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %146 unwind label %105

146:                                              ; preds = %144
  unreachable

147:                                              ; preds = %141
  %148 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %142) #16
  br label %955

149:                                              ; preds = %136, %135
  %150 = load ptr, ptr %11, align 8, !tbaa !63
  %151 = add nsw i32 %54, 1
  %152 = sext i32 %151 to i64
  %153 = shl nsw i64 %152, 1
  %154 = load ptr, ptr %150, align 8, !tbaa !54
  %155 = getelementptr inbounds ptr, ptr %154, i64 2
  %156 = load ptr, ptr %155, align 8
  %157 = invoke noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(8) %150, i64 noundef %153)
          to label %158 unwind label %177

158:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %159 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %157, ptr %5, align 8, !tbaa !76
  %160 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %159, ptr %160, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %157, ptr noundef %35, i32 noundef %133, i32 noundef %54, ptr noundef %159)
          to label %161 unwind label %179

161:                                              ; preds = %158
  %162 = add nsw i32 %133, 1
  %163 = icmp slt i32 %162, %54
  br i1 %163, label %164, label %196

164:                                              ; preds = %161
  %165 = invoke noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %157, ptr noundef nonnull @_ZN11xercesc_2_7L12DOUBLE_SLASHE, i32 noundef 2)
          to label %166 unwind label %179

166:                                              ; preds = %164
  %167 = icmp eq i32 %165, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %166
  %169 = add nsw i32 %133, 2
  %170 = icmp slt i32 %169, %54
  br i1 %170, label %171, label %187

171:                                              ; preds = %168
  %172 = sext i32 %169 to i64
  br label %173

173:                                              ; preds = %171, %181
  %174 = phi i64 [ %172, %171 ], [ %182, %181 ]
  %175 = getelementptr inbounds i16, ptr %35, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !71
  switch i16 %176, label %181 [
    i16 63, label %185
    i16 47, label %185
    i16 35, label %185
  ]

177:                                              ; preds = %149
  %178 = landingpad { ptr, i32 }
          cleanup
  br label %955

179:                                              ; preds = %164, %158
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %953

181:                                              ; preds = %173
  %182 = add nsw i64 %174, 1
  %183 = trunc i64 %182 to i32
  %184 = icmp eq i32 %54, %183
  br i1 %184, label %187, label %173, !llvm.loop !79

185:                                              ; preds = %173, %173, %173
  %186 = trunc i64 %174 to i32
  br label %187

187:                                              ; preds = %185, %181, %168
  %188 = phi i32 [ %169, %168 ], [ %186, %185 ], [ %54, %181 ]
  %189 = icmp sgt i32 %188, %169
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %157, ptr noundef %35, i32 noundef %169, i32 noundef %188, ptr noundef %191)
          to label %192 unwind label %193

192:                                              ; preds = %190
  invoke void @_ZN11xercesc_2_76XMLUri19initializeAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %157)
          to label %196 unwind label %193

193:                                              ; preds = %195, %192, %190
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %953

195:                                              ; preds = %187
  invoke void @_ZN11xercesc_2_76XMLUri7setHostEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
          to label %196 unwind label %193

196:                                              ; preds = %192, %195, %166, %161
  %197 = phi i32 [ %133, %166 ], [ %133, %161 ], [ %188, %195 ], [ %188, %192 ]
  %198 = icmp slt i32 %197, %54
  br i1 %198, label %199, label %949

199:                                              ; preds = %196
  %200 = load ptr, ptr %11, align 8, !tbaa !63
  %201 = load ptr, ptr %200, align 8, !tbaa !54
  %202 = getelementptr inbounds ptr, ptr %201, i64 2
  %203 = load ptr, ptr %202, align 8
  %204 = invoke noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %200, i64 noundef %153)
          to label %205 unwind label %412

205:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %206 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %204, ptr %6, align 8, !tbaa !76
  %207 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %206, ptr %207, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %204, ptr noundef %35, i32 noundef %197, i32 noundef %54, ptr noundef %206)
          to label %208 unwind label %414

208:                                              ; preds = %205
  invoke void @_ZN11xercesc_2_76XMLUri14initializePathEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %204)
          to label %209 unwind label %414

209:                                              ; preds = %208
  br i1 %55, label %948, label %210

210:                                              ; preds = %209
  %211 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %212 = load ptr, ptr %211, align 8, !tbaa !68
  %213 = icmp eq ptr %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = load i16, ptr %212, align 2, !tbaa !71
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %416

217:                                              ; preds = %214, %210
  %218 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !64
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %416

221:                                              ; preds = %217
  %222 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %223 = load ptr, ptr %222, align 8, !tbaa !66
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %416

225:                                              ; preds = %221
  %226 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !67
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %416

229:                                              ; preds = %225
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !64
  %232 = load ptr, ptr %11, align 8, !tbaa !63
  %233 = icmp eq ptr %231, null
  br i1 %233, label %255, label %234

234:                                              ; preds = %229
  %235 = load i16, ptr %231, align 2, !tbaa !71
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %234, %237
  %238 = phi ptr [ %239, %237 ], [ %231, %234 ]
  %239 = getelementptr inbounds i16, ptr %238, i64 1
  %240 = load i16, ptr %239, align 2, !tbaa !71
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %242, label %237, !llvm.loop !73

242:                                              ; preds = %237
  %243 = ptrtoint ptr %239 to i64
  %244 = ptrtoint ptr %231 to i64
  %245 = sub i64 %243, %244
  %246 = add i64 %245, 2
  %247 = and i64 %246, 8589934590
  br label %248

248:                                              ; preds = %242, %234
  %249 = phi i64 [ %247, %242 ], [ 2, %234 ]
  %250 = load ptr, ptr %232, align 8, !tbaa !54
  %251 = getelementptr inbounds ptr, ptr %250, i64 2
  %252 = load ptr, ptr %251, align 8
  %253 = invoke noundef ptr %252(ptr noundef nonnull align 8 dereferenceable(8) %232, i64 noundef %249)
          to label %254 unwind label %414

254:                                              ; preds = %248
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %253, ptr nonnull align 2 %231, i64 %249, i1 false)
  br label %255

255:                                              ; preds = %254, %229
  %256 = phi ptr [ %253, %254 ], [ null, %229 ]
  store ptr %256, ptr %218, align 8, !tbaa !64
  %257 = load ptr, ptr %11, align 8, !tbaa !63
  %258 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !65
  %260 = load ptr, ptr %257, align 8, !tbaa !54
  %261 = getelementptr inbounds ptr, ptr %260, i64 3
  %262 = load ptr, ptr %261, align 8
  invoke void %262(ptr noundef nonnull align 8 dereferenceable(8) %257, ptr noundef %259)
          to label %263 unwind label %414

263:                                              ; preds = %255
  %264 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !65
  %266 = load ptr, ptr %11, align 8, !tbaa !63
  %267 = icmp eq ptr %265, null
  br i1 %267, label %289, label %268

268:                                              ; preds = %263
  %269 = load i16, ptr %265, align 2, !tbaa !71
  %270 = icmp eq i16 %269, 0
  br i1 %270, label %282, label %271

271:                                              ; preds = %268, %271
  %272 = phi ptr [ %273, %271 ], [ %265, %268 ]
  %273 = getelementptr inbounds i16, ptr %272, i64 1
  %274 = load i16, ptr %273, align 2, !tbaa !71
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %276, label %271, !llvm.loop !73

276:                                              ; preds = %271
  %277 = ptrtoint ptr %273 to i64
  %278 = ptrtoint ptr %265 to i64
  %279 = sub i64 %277, %278
  %280 = add i64 %279, 2
  %281 = and i64 %280, 8589934590
  br label %282

282:                                              ; preds = %276, %268
  %283 = phi i64 [ %281, %276 ], [ 2, %268 ]
  %284 = load ptr, ptr %266, align 8, !tbaa !54
  %285 = getelementptr inbounds ptr, ptr %284, i64 2
  %286 = load ptr, ptr %285, align 8
  %287 = invoke noundef ptr %286(ptr noundef nonnull align 8 dereferenceable(8) %266, i64 noundef %283)
          to label %288 unwind label %414

288:                                              ; preds = %282
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %287, ptr nonnull align 2 %265, i64 %283, i1 false)
  br label %289

289:                                              ; preds = %288, %263
  %290 = phi ptr [ %287, %288 ], [ null, %263 ]
  store ptr %290, ptr %258, align 8, !tbaa !65
  %291 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !66
  %293 = load ptr, ptr %11, align 8, !tbaa !63
  %294 = icmp eq ptr %292, null
  br i1 %294, label %316, label %295

295:                                              ; preds = %289
  %296 = load i16, ptr %292, align 2, !tbaa !71
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %309, label %298

298:                                              ; preds = %295, %298
  %299 = phi ptr [ %300, %298 ], [ %292, %295 ]
  %300 = getelementptr inbounds i16, ptr %299, i64 1
  %301 = load i16, ptr %300, align 2, !tbaa !71
  %302 = icmp eq i16 %301, 0
  br i1 %302, label %303, label %298, !llvm.loop !73

303:                                              ; preds = %298
  %304 = ptrtoint ptr %300 to i64
  %305 = ptrtoint ptr %292 to i64
  %306 = sub i64 %304, %305
  %307 = add i64 %306, 2
  %308 = and i64 %307, 8589934590
  br label %309

309:                                              ; preds = %303, %295
  %310 = phi i64 [ %308, %303 ], [ 2, %295 ]
  %311 = load ptr, ptr %293, align 8, !tbaa !54
  %312 = getelementptr inbounds ptr, ptr %311, i64 2
  %313 = load ptr, ptr %312, align 8
  %314 = invoke noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(8) %293, i64 noundef %310)
          to label %315 unwind label %414

315:                                              ; preds = %309
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %314, ptr nonnull align 2 %292, i64 %310, i1 false)
  br label %316

316:                                              ; preds = %315, %289
  %317 = phi ptr [ %314, %315 ], [ null, %289 ]
  store ptr %317, ptr %222, align 8, !tbaa !66
  %318 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 1
  %319 = load i32, ptr %318, align 8, !tbaa !57
  %320 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %319, ptr %320, align 8, !tbaa !57
  %321 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 5
  %322 = load ptr, ptr %321, align 8, !tbaa !67
  %323 = load ptr, ptr %11, align 8, !tbaa !63
  %324 = icmp eq ptr %322, null
  br i1 %324, label %346, label %325

325:                                              ; preds = %316
  %326 = load i16, ptr %322, align 2, !tbaa !71
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %339, label %328

328:                                              ; preds = %325, %328
  %329 = phi ptr [ %330, %328 ], [ %322, %325 ]
  %330 = getelementptr inbounds i16, ptr %329, i64 1
  %331 = load i16, ptr %330, align 2, !tbaa !71
  %332 = icmp eq i16 %331, 0
  br i1 %332, label %333, label %328, !llvm.loop !73

333:                                              ; preds = %328
  %334 = ptrtoint ptr %330 to i64
  %335 = ptrtoint ptr %322 to i64
  %336 = sub i64 %334, %335
  %337 = add i64 %336, 2
  %338 = and i64 %337, 8589934590
  br label %339

339:                                              ; preds = %333, %325
  %340 = phi i64 [ %338, %333 ], [ 2, %325 ]
  %341 = load ptr, ptr %323, align 8, !tbaa !54
  %342 = getelementptr inbounds ptr, ptr %341, i64 2
  %343 = load ptr, ptr %342, align 8
  %344 = invoke noundef ptr %343(ptr noundef nonnull align 8 dereferenceable(8) %323, i64 noundef %340)
          to label %345 unwind label %414

345:                                              ; preds = %339
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %344, ptr nonnull align 2 %322, i64 %340, i1 false)
  br label %346

346:                                              ; preds = %345, %316
  %347 = phi ptr [ %344, %345 ], [ null, %316 ]
  store ptr %347, ptr %226, align 8, !tbaa !67
  %348 = load ptr, ptr %11, align 8, !tbaa !63
  %349 = load ptr, ptr %211, align 8, !tbaa !68
  %350 = load ptr, ptr %348, align 8, !tbaa !54
  %351 = getelementptr inbounds ptr, ptr %350, i64 3
  %352 = load ptr, ptr %351, align 8
  invoke void %352(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef %349)
          to label %353 unwind label %414

353:                                              ; preds = %346
  %354 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 6
  %355 = load ptr, ptr %354, align 8, !tbaa !68
  %356 = load ptr, ptr %11, align 8, !tbaa !63
  %357 = icmp eq ptr %355, null
  br i1 %357, label %379, label %358

358:                                              ; preds = %353
  %359 = load i16, ptr %355, align 2, !tbaa !71
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %372, label %361

361:                                              ; preds = %358, %361
  %362 = phi ptr [ %363, %361 ], [ %355, %358 ]
  %363 = getelementptr inbounds i16, ptr %362, i64 1
  %364 = load i16, ptr %363, align 2, !tbaa !71
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %366, label %361, !llvm.loop !73

366:                                              ; preds = %361
  %367 = ptrtoint ptr %363 to i64
  %368 = ptrtoint ptr %355 to i64
  %369 = sub i64 %367, %368
  %370 = add i64 %369, 2
  %371 = and i64 %370, 8589934590
  br label %372

372:                                              ; preds = %366, %358
  %373 = phi i64 [ %371, %366 ], [ 2, %358 ]
  %374 = load ptr, ptr %356, align 8, !tbaa !54
  %375 = getelementptr inbounds ptr, ptr %374, i64 2
  %376 = load ptr, ptr %375, align 8
  %377 = invoke noundef ptr %376(ptr noundef nonnull align 8 dereferenceable(8) %356, i64 noundef %373)
          to label %378 unwind label %414

378:                                              ; preds = %372
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %377, ptr nonnull align 2 %355, i64 %373, i1 false)
  br label %379

379:                                              ; preds = %378, %353
  %380 = phi ptr [ %377, %378 ], [ null, %353 ]
  store ptr %380, ptr %211, align 8, !tbaa !68
  %381 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %382 = load ptr, ptr %381, align 8, !tbaa !69
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %948

384:                                              ; preds = %379
  %385 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 7
  %386 = load ptr, ptr %385, align 8, !tbaa !69
  %387 = load ptr, ptr %11, align 8, !tbaa !63
  %388 = icmp eq ptr %386, null
  br i1 %388, label %410, label %389

389:                                              ; preds = %384
  %390 = load i16, ptr %386, align 2, !tbaa !71
  %391 = icmp eq i16 %390, 0
  br i1 %391, label %403, label %392

392:                                              ; preds = %389, %392
  %393 = phi ptr [ %394, %392 ], [ %386, %389 ]
  %394 = getelementptr inbounds i16, ptr %393, i64 1
  %395 = load i16, ptr %394, align 2, !tbaa !71
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %397, label %392, !llvm.loop !73

397:                                              ; preds = %392
  %398 = ptrtoint ptr %394 to i64
  %399 = ptrtoint ptr %386 to i64
  %400 = sub i64 %398, %399
  %401 = add i64 %400, 2
  %402 = and i64 %401, 8589934590
  br label %403

403:                                              ; preds = %397, %389
  %404 = phi i64 [ %402, %397 ], [ 2, %389 ]
  %405 = load ptr, ptr %387, align 8, !tbaa !54
  %406 = getelementptr inbounds ptr, ptr %405, i64 2
  %407 = load ptr, ptr %406, align 8
  %408 = invoke noundef ptr %407(ptr noundef nonnull align 8 dereferenceable(8) %387, i64 noundef %404)
          to label %409 unwind label %414

409:                                              ; preds = %403
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %408, ptr nonnull align 2 %386, i64 %404, i1 false)
  br label %410

410:                                              ; preds = %409, %384
  %411 = phi ptr [ %408, %409 ], [ null, %384 ]
  store ptr %411, ptr %381, align 8, !tbaa !69
  br label %948

412:                                              ; preds = %199
  %413 = landingpad { ptr, i32 }
          cleanup
  br label %953

414:                                              ; preds = %552, %538, %508, %481, %439, %403, %372, %339, %309, %282, %248, %455, %346, %255, %208, %205
  %415 = landingpad { ptr, i32 }
          cleanup
  br label %951

416:                                              ; preds = %225, %221, %217, %214
  %417 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !64
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %948

420:                                              ; preds = %416
  %421 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !64
  %423 = load ptr, ptr %11, align 8, !tbaa !63
  %424 = icmp eq ptr %422, null
  br i1 %424, label %446, label %425

425:                                              ; preds = %420
  %426 = load i16, ptr %422, align 2, !tbaa !71
  %427 = icmp eq i16 %426, 0
  br i1 %427, label %439, label %428

428:                                              ; preds = %425, %428
  %429 = phi ptr [ %430, %428 ], [ %422, %425 ]
  %430 = getelementptr inbounds i16, ptr %429, i64 1
  %431 = load i16, ptr %430, align 2, !tbaa !71
  %432 = icmp eq i16 %431, 0
  br i1 %432, label %433, label %428, !llvm.loop !73

433:                                              ; preds = %428
  %434 = ptrtoint ptr %430 to i64
  %435 = ptrtoint ptr %422 to i64
  %436 = sub i64 %434, %435
  %437 = add i64 %436, 2
  %438 = and i64 %437, 8589934590
  br label %439

439:                                              ; preds = %433, %425
  %440 = phi i64 [ %438, %433 ], [ 2, %425 ]
  %441 = load ptr, ptr %423, align 8, !tbaa !54
  %442 = getelementptr inbounds ptr, ptr %441, i64 2
  %443 = load ptr, ptr %442, align 8
  %444 = invoke noundef ptr %443(ptr noundef nonnull align 8 dereferenceable(8) %423, i64 noundef %440)
          to label %445 unwind label %414

445:                                              ; preds = %439
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %444, ptr nonnull align 2 %422, i64 %440, i1 false)
  br label %446

446:                                              ; preds = %445, %420
  %447 = phi ptr [ %444, %445 ], [ null, %420 ]
  store ptr %447, ptr %417, align 8, !tbaa !64
  %448 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %449 = load ptr, ptr %448, align 8, !tbaa !66
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %948

451:                                              ; preds = %446
  %452 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %453 = load ptr, ptr %452, align 8, !tbaa !67
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %948

455:                                              ; preds = %451
  %456 = load ptr, ptr %11, align 8, !tbaa !63
  %457 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %458 = load ptr, ptr %457, align 8, !tbaa !65
  %459 = load ptr, ptr %456, align 8, !tbaa !54
  %460 = getelementptr inbounds ptr, ptr %459, i64 3
  %461 = load ptr, ptr %460, align 8
  invoke void %461(ptr noundef nonnull align 8 dereferenceable(8) %456, ptr noundef %458)
          to label %462 unwind label %414

462:                                              ; preds = %455
  %463 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !65
  %465 = load ptr, ptr %11, align 8, !tbaa !63
  %466 = icmp eq ptr %464, null
  br i1 %466, label %488, label %467

467:                                              ; preds = %462
  %468 = load i16, ptr %464, align 2, !tbaa !71
  %469 = icmp eq i16 %468, 0
  br i1 %469, label %481, label %470

470:                                              ; preds = %467, %470
  %471 = phi ptr [ %472, %470 ], [ %464, %467 ]
  %472 = getelementptr inbounds i16, ptr %471, i64 1
  %473 = load i16, ptr %472, align 2, !tbaa !71
  %474 = icmp eq i16 %473, 0
  br i1 %474, label %475, label %470, !llvm.loop !73

475:                                              ; preds = %470
  %476 = ptrtoint ptr %472 to i64
  %477 = ptrtoint ptr %464 to i64
  %478 = sub i64 %476, %477
  %479 = add i64 %478, 2
  %480 = and i64 %479, 8589934590
  br label %481

481:                                              ; preds = %475, %467
  %482 = phi i64 [ %480, %475 ], [ 2, %467 ]
  %483 = load ptr, ptr %465, align 8, !tbaa !54
  %484 = getelementptr inbounds ptr, ptr %483, i64 2
  %485 = load ptr, ptr %484, align 8
  %486 = invoke noundef ptr %485(ptr noundef nonnull align 8 dereferenceable(8) %465, i64 noundef %482)
          to label %487 unwind label %414

487:                                              ; preds = %481
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %486, ptr nonnull align 2 %464, i64 %482, i1 false)
  br label %488

488:                                              ; preds = %487, %462
  %489 = phi ptr [ %486, %487 ], [ null, %462 ]
  store ptr %489, ptr %457, align 8, !tbaa !65
  %490 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 4
  %491 = load ptr, ptr %490, align 8, !tbaa !66
  %492 = load ptr, ptr %11, align 8, !tbaa !63
  %493 = icmp eq ptr %491, null
  br i1 %493, label %515, label %494

494:                                              ; preds = %488
  %495 = load i16, ptr %491, align 2, !tbaa !71
  %496 = icmp eq i16 %495, 0
  br i1 %496, label %508, label %497

497:                                              ; preds = %494, %497
  %498 = phi ptr [ %499, %497 ], [ %491, %494 ]
  %499 = getelementptr inbounds i16, ptr %498, i64 1
  %500 = load i16, ptr %499, align 2, !tbaa !71
  %501 = icmp eq i16 %500, 0
  br i1 %501, label %502, label %497, !llvm.loop !73

502:                                              ; preds = %497
  %503 = ptrtoint ptr %499 to i64
  %504 = ptrtoint ptr %491 to i64
  %505 = sub i64 %503, %504
  %506 = add i64 %505, 2
  %507 = and i64 %506, 8589934590
  br label %508

508:                                              ; preds = %502, %494
  %509 = phi i64 [ %507, %502 ], [ 2, %494 ]
  %510 = load ptr, ptr %492, align 8, !tbaa !54
  %511 = getelementptr inbounds ptr, ptr %510, i64 2
  %512 = load ptr, ptr %511, align 8
  %513 = invoke noundef ptr %512(ptr noundef nonnull align 8 dereferenceable(8) %492, i64 noundef %509)
          to label %514 unwind label %414

514:                                              ; preds = %508
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %513, ptr nonnull align 2 %491, i64 %509, i1 false)
  br label %515

515:                                              ; preds = %514, %488
  %516 = phi ptr [ %513, %514 ], [ null, %488 ]
  store ptr %516, ptr %448, align 8, !tbaa !66
  %517 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 1
  %518 = load i32, ptr %517, align 8, !tbaa !57
  %519 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %518, ptr %519, align 8, !tbaa !57
  %520 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 5
  %521 = load ptr, ptr %520, align 8, !tbaa !67
  %522 = load ptr, ptr %11, align 8, !tbaa !63
  %523 = icmp eq ptr %521, null
  br i1 %523, label %545, label %524

524:                                              ; preds = %515
  %525 = load i16, ptr %521, align 2, !tbaa !71
  %526 = icmp eq i16 %525, 0
  br i1 %526, label %538, label %527

527:                                              ; preds = %524, %527
  %528 = phi ptr [ %529, %527 ], [ %521, %524 ]
  %529 = getelementptr inbounds i16, ptr %528, i64 1
  %530 = load i16, ptr %529, align 2, !tbaa !71
  %531 = icmp eq i16 %530, 0
  br i1 %531, label %532, label %527, !llvm.loop !73

532:                                              ; preds = %527
  %533 = ptrtoint ptr %529 to i64
  %534 = ptrtoint ptr %521 to i64
  %535 = sub i64 %533, %534
  %536 = add i64 %535, 2
  %537 = and i64 %536, 8589934590
  br label %538

538:                                              ; preds = %532, %524
  %539 = phi i64 [ %537, %532 ], [ 2, %524 ]
  %540 = load ptr, ptr %522, align 8, !tbaa !54
  %541 = getelementptr inbounds ptr, ptr %540, i64 2
  %542 = load ptr, ptr %541, align 8
  %543 = invoke noundef ptr %542(ptr noundef nonnull align 8 dereferenceable(8) %522, i64 noundef %539)
          to label %544 unwind label %414

544:                                              ; preds = %538
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %543, ptr nonnull align 2 %521, i64 %539, i1 false)
  br label %545

545:                                              ; preds = %544, %515
  %546 = phi ptr [ %543, %544 ], [ null, %515 ]
  store ptr %546, ptr %452, align 8, !tbaa !67
  %547 = load ptr, ptr %211, align 8, !tbaa !68
  %548 = icmp eq ptr %547, null
  br i1 %548, label %556, label %549

549:                                              ; preds = %545
  %550 = load i16, ptr %547, align 2, !tbaa !71
  %551 = icmp eq i16 %550, 0
  br i1 %551, label %556, label %552

552:                                              ; preds = %549
  %553 = invoke noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %547, ptr noundef nonnull @_ZN11xercesc_2_7L12SINGLE_SLASHE, i32 noundef 1)
          to label %554 unwind label %414

554:                                              ; preds = %552
  %555 = icmp eq i32 %553, 0
  br i1 %555, label %948, label %556

556:                                              ; preds = %554, %549, %545
  %557 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 6
  %558 = load ptr, ptr %557, align 8, !tbaa !68
  %559 = load ptr, ptr %11, align 8, !tbaa !63
  %560 = icmp eq ptr %558, null
  br i1 %560, label %582, label %561

561:                                              ; preds = %556
  %562 = load i16, ptr %558, align 2, !tbaa !71
  %563 = icmp eq i16 %562, 0
  br i1 %563, label %575, label %564

564:                                              ; preds = %561, %564
  %565 = phi ptr [ %566, %564 ], [ %558, %561 ]
  %566 = getelementptr inbounds i16, ptr %565, i64 1
  %567 = load i16, ptr %566, align 2, !tbaa !71
  %568 = icmp eq i16 %567, 0
  br i1 %568, label %569, label %564, !llvm.loop !73

569:                                              ; preds = %564
  %570 = ptrtoint ptr %566 to i64
  %571 = ptrtoint ptr %558 to i64
  %572 = sub i64 %570, %571
  %573 = add i64 %572, 2
  %574 = and i64 %573, 8589934590
  br label %575

575:                                              ; preds = %569, %561
  %576 = phi i64 [ %574, %569 ], [ 2, %561 ]
  %577 = load ptr, ptr %559, align 8, !tbaa !54
  %578 = getelementptr inbounds ptr, ptr %577, i64 2
  %579 = load ptr, ptr %578, align 8
  %580 = invoke noundef ptr %579(ptr noundef nonnull align 8 dereferenceable(8) %559, i64 noundef %576)
          to label %581 unwind label %669

581:                                              ; preds = %575
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %580, ptr nonnull align 2 %558, i64 %576, i1 false)
  br label %582

582:                                              ; preds = %581, %556
  %583 = phi ptr [ %580, %581 ], [ null, %556 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %584 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %583, ptr %7, align 8, !tbaa !76
  %585 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %584, ptr %585, align 8, !tbaa !78
  %586 = load ptr, ptr %211, align 8, !tbaa !68
  %587 = icmp eq ptr %586, null
  br i1 %587, label %602, label %588

588:                                              ; preds = %582
  %589 = load i16, ptr %586, align 2, !tbaa !71
  %590 = icmp eq i16 %589, 0
  br i1 %590, label %602, label %591

591:                                              ; preds = %588, %591
  %592 = phi ptr [ %593, %591 ], [ %586, %588 ]
  %593 = getelementptr inbounds i16, ptr %592, i64 1
  %594 = load i16, ptr %593, align 2, !tbaa !71
  %595 = icmp eq i16 %594, 0
  br i1 %595, label %596, label %591, !llvm.loop !73

596:                                              ; preds = %591
  %597 = ptrtoint ptr %593 to i64
  %598 = ptrtoint ptr %586 to i64
  %599 = sub i64 %597, %598
  %600 = lshr exact i64 %599, 1
  %601 = trunc i64 %600 to i32
  br label %602

602:                                              ; preds = %582, %588, %596
  %603 = phi i32 [ %601, %596 ], [ 0, %588 ], [ 0, %582 ]
  %604 = icmp eq ptr %583, null
  br i1 %604, label %619, label %605

605:                                              ; preds = %602
  %606 = load i16, ptr %583, align 2, !tbaa !71
  %607 = icmp eq i16 %606, 0
  br i1 %607, label %619, label %608

608:                                              ; preds = %605, %608
  %609 = phi ptr [ %610, %608 ], [ %583, %605 ]
  %610 = getelementptr inbounds i16, ptr %609, i64 1
  %611 = load i16, ptr %610, align 2, !tbaa !71
  %612 = icmp eq i16 %611, 0
  br i1 %612, label %613, label %608, !llvm.loop !73

613:                                              ; preds = %608
  %614 = ptrtoint ptr %610 to i64
  %615 = ptrtoint ptr %583 to i64
  %616 = sub i64 %614, %615
  %617 = lshr exact i64 %616, 1
  %618 = trunc i64 %617 to i32
  br label %619

619:                                              ; preds = %602, %605, %613
  %620 = phi i32 [ %618, %613 ], [ 0, %605 ], [ 0, %602 ]
  %621 = add i32 %54, 1
  %622 = add i32 %621, %603
  %623 = add i32 %622, %620
  %624 = sext i32 %623 to i64
  %625 = shl nsw i64 %624, 1
  %626 = load ptr, ptr %584, align 8, !tbaa !54
  %627 = getelementptr inbounds ptr, ptr %626, i64 2
  %628 = load ptr, ptr %627, align 8
  %629 = invoke noundef ptr %628(ptr noundef nonnull align 8 dereferenceable(8) %584, i64 noundef %625)
          to label %630 unwind label %671

630:                                              ; preds = %619
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  %631 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %629, ptr %8, align 8, !tbaa !76
  %632 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %8, i64 0, i32 1
  store ptr %631, ptr %632, align 8, !tbaa !78
  store i16 0, ptr %629, align 2, !tbaa !71
  %633 = load ptr, ptr %631, align 8, !tbaa !54
  %634 = getelementptr inbounds ptr, ptr %633, i64 2
  %635 = load ptr, ptr %634, align 8
  %636 = invoke noundef ptr %635(ptr noundef nonnull align 8 dereferenceable(8) %631, i64 noundef %625)
          to label %637 unwind label %673

637:                                              ; preds = %630
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %638 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %636, ptr %9, align 8, !tbaa !76
  %639 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %9, i64 0, i32 1
  store ptr %638, ptr %639, align 8, !tbaa !78
  %640 = load ptr, ptr %638, align 8, !tbaa !54
  %641 = getelementptr inbounds ptr, ptr %640, i64 2
  %642 = load ptr, ptr %641, align 8
  %643 = invoke noundef ptr %642(ptr noundef nonnull align 8 dereferenceable(8) %638, i64 noundef %625)
          to label %644 unwind label %675

644:                                              ; preds = %637
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  %645 = load ptr, ptr %11, align 8, !tbaa !63
  store ptr %643, ptr %10, align 8, !tbaa !76
  %646 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %10, i64 0, i32 1
  store ptr %645, ptr %646, align 8, !tbaa !78
  br i1 %604, label %679, label %647

647:                                              ; preds = %644
  %648 = load i16, ptr %583, align 2, !tbaa !71
  %649 = icmp eq i16 %648, 0
  br i1 %649, label %661, label %650

650:                                              ; preds = %647, %650
  %651 = phi ptr [ %652, %650 ], [ %583, %647 ]
  %652 = getelementptr inbounds i16, ptr %651, i64 1
  %653 = load i16, ptr %652, align 2, !tbaa !71
  %654 = icmp eq i16 %653, 0
  br i1 %654, label %655, label %650, !llvm.loop !73

655:                                              ; preds = %650
  %656 = ptrtoint ptr %652 to i64
  %657 = ptrtoint ptr %583 to i64
  %658 = sub i64 %656, %657
  %659 = lshr exact i64 %658, 1
  %660 = trunc i64 %659 to i32
  br label %661

661:                                              ; preds = %655, %647
  %662 = phi i32 [ %660, %655 ], [ 0, %647 ]
  %663 = invoke noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 47, ptr noundef nonnull %583, i32 noundef %662)
          to label %664 unwind label %677

664:                                              ; preds = %661
  %665 = icmp eq i32 %663, -1
  br i1 %665, label %679, label %666

666:                                              ; preds = %664
  %667 = add nuw nsw i32 %663, 1
  %668 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef nonnull %629, ptr noundef nonnull %583, i32 noundef 0, i32 noundef %667, ptr noundef %668)
          to label %679 unwind label %677

669:                                              ; preds = %575
  %670 = landingpad { ptr, i32 }
          cleanup
  br label %951

671:                                              ; preds = %619
  %672 = landingpad { ptr, i32 }
          cleanup
  br label %946

673:                                              ; preds = %630
  %674 = landingpad { ptr, i32 }
          cleanup
  br label %944

675:                                              ; preds = %637
  %676 = landingpad { ptr, i32 }
          cleanup
  br label %942

677:                                              ; preds = %661, %666
  %678 = landingpad { ptr, i32 }
          cleanup
  br label %940

679:                                              ; preds = %664, %666, %644
  %680 = load ptr, ptr %211, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %629, ptr noundef %680)
          to label %681 unwind label %712

681:                                              ; preds = %679
  %682 = icmp eq ptr %629, null
  %683 = ptrtoint ptr %629 to i64
  br label %684

684:                                              ; preds = %681, %709
  %685 = invoke noundef i32 @_ZN11xercesc_2_79XMLString12patternMatchEPKtS2_(ptr noundef nonnull %629, ptr noundef nonnull @_ZN11xercesc_2_7L15SLASH_DOT_SLASHE)
          to label %686 unwind label %710

686:                                              ; preds = %684
  %687 = icmp eq i32 %685, -1
  br i1 %687, label %714, label %688

688:                                              ; preds = %686
  %689 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %636, ptr noundef nonnull %629, i32 noundef 0, i32 noundef %685, ptr noundef %689)
          to label %690 unwind label %710

690:                                              ; preds = %688
  %691 = add nsw i32 %685, 2
  br i1 %682, label %705, label %692

692:                                              ; preds = %690
  %693 = load i16, ptr %629, align 2, !tbaa !71
  %694 = icmp eq i16 %693, 0
  br i1 %694, label %705, label %695

695:                                              ; preds = %692, %695
  %696 = phi ptr [ %697, %695 ], [ %629, %692 ]
  %697 = getelementptr inbounds i16, ptr %696, i64 1
  %698 = load i16, ptr %697, align 2, !tbaa !71
  %699 = icmp eq i16 %698, 0
  br i1 %699, label %700, label %695, !llvm.loop !73

700:                                              ; preds = %695
  %701 = ptrtoint ptr %697 to i64
  %702 = sub i64 %701, %683
  %703 = lshr exact i64 %702, 1
  %704 = trunc i64 %703 to i32
  br label %705

705:                                              ; preds = %690, %692, %700
  %706 = phi i32 [ %704, %700 ], [ 0, %692 ], [ 0, %690 ]
  %707 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %643, ptr noundef nonnull %629, i32 noundef %691, i32 noundef %706, ptr noundef %707)
          to label %708 unwind label %710

708:                                              ; preds = %705
  store i16 0, ptr %629, align 2, !tbaa !71
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %629, ptr noundef %636)
          to label %709 unwind label %710

709:                                              ; preds = %708
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %629, ptr noundef %643)
          to label %684 unwind label %710, !llvm.loop !80

710:                                              ; preds = %684, %688, %705, %708, %709
  %711 = landingpad { ptr, i32 }
          cleanup
  br label %940

712:                                              ; preds = %679, %730
  %713 = landingpad { ptr, i32 }
          cleanup
  br label %940

714:                                              ; preds = %686
  %715 = icmp eq ptr %629, null
  br i1 %715, label %730, label %716

716:                                              ; preds = %714
  %717 = load i16, ptr %629, align 2, !tbaa !71
  %718 = icmp eq i16 %717, 0
  br i1 %718, label %730, label %719

719:                                              ; preds = %716, %719
  %720 = phi ptr [ %721, %719 ], [ %629, %716 ]
  %721 = getelementptr inbounds i16, ptr %720, i64 1
  %722 = load i16, ptr %721, align 2, !tbaa !71
  %723 = icmp eq i16 %722, 0
  br i1 %723, label %724, label %719, !llvm.loop !73

724:                                              ; preds = %719
  %725 = ptrtoint ptr %721 to i64
  %726 = ptrtoint ptr %629 to i64
  %727 = sub i64 %725, %726
  %728 = lshr exact i64 %727, 1
  %729 = trunc i64 %728 to i32
  br label %730

730:                                              ; preds = %724, %716, %714
  %731 = phi i32 [ %729, %724 ], [ 0, %716 ], [ 0, %714 ]
  %732 = add i32 %731, -2
  %733 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %629, i32 noundef %732, ptr noundef nonnull @_ZN11xercesc_2_7L9SLASH_DOTE, i32 noundef 0, i32 noundef 2)
          to label %734 unwind label %712

734:                                              ; preds = %730
  br i1 %733, label %735, label %754

735:                                              ; preds = %734
  br i1 %715, label %749, label %736

736:                                              ; preds = %735
  %737 = load i16, ptr %629, align 2, !tbaa !71
  %738 = icmp eq i16 %737, 0
  br i1 %738, label %749, label %739

739:                                              ; preds = %736, %739
  %740 = phi ptr [ %741, %739 ], [ %629, %736 ]
  %741 = getelementptr inbounds i16, ptr %740, i64 1
  %742 = load i16, ptr %741, align 2, !tbaa !71
  %743 = icmp eq i16 %742, 0
  br i1 %743, label %744, label %739, !llvm.loop !73

744:                                              ; preds = %739
  %745 = ptrtoint ptr %741 to i64
  %746 = ptrtoint ptr %629 to i64
  %747 = sub i64 %745, %746
  %748 = lshr exact i64 %747, 1
  br label %749

749:                                              ; preds = %735, %736, %744
  %750 = phi i64 [ %748, %744 ], [ 0, %736 ], [ 0, %735 ]
  %751 = add nuw i64 %750, 4294967295
  %752 = and i64 %751, 4294967295
  %753 = getelementptr inbounds i16, ptr %629, i64 %752
  store i16 0, ptr %753, align 2, !tbaa !71
  br label %754

754:                                              ; preds = %749, %734
  %755 = icmp eq ptr %636, null
  %756 = ptrtoint ptr %636 to i64
  %757 = ptrtoint ptr %629 to i64
  br label %758

758:                                              ; preds = %831, %754
  %759 = phi i32 [ 1, %754 ], [ %832, %831 ]
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i16, ptr %629, i64 %760
  %762 = invoke noundef i32 @_ZN11xercesc_2_79XMLString12patternMatchEPKtS2_(ptr noundef nonnull %761, ptr noundef nonnull @_ZN11xercesc_2_7L18SLASH_DOTDOT_SLASHE)
          to label %763 unwind label %825

763:                                              ; preds = %758
  %764 = icmp eq i32 %762, -1
  br i1 %764, label %833, label %765

765:                                              ; preds = %763
  %766 = add nsw i32 %762, %759
  %767 = add nsw i32 %766, -1
  %768 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %636, ptr noundef nonnull %629, i32 noundef 0, i32 noundef %767, ptr noundef %768)
          to label %769 unwind label %825

769:                                              ; preds = %765
  br i1 %755, label %783, label %770

770:                                              ; preds = %769
  %771 = load i16, ptr %636, align 2, !tbaa !71
  %772 = icmp eq i16 %771, 0
  br i1 %772, label %783, label %773

773:                                              ; preds = %770, %773
  %774 = phi ptr [ %775, %773 ], [ %636, %770 ]
  %775 = getelementptr inbounds i16, ptr %774, i64 1
  %776 = load i16, ptr %775, align 2, !tbaa !71
  %777 = icmp eq i16 %776, 0
  br i1 %777, label %778, label %773, !llvm.loop !73

778:                                              ; preds = %773
  %779 = ptrtoint ptr %775 to i64
  %780 = sub i64 %779, %756
  %781 = lshr exact i64 %780, 1
  %782 = trunc i64 %781 to i32
  br label %783

783:                                              ; preds = %778, %770, %769
  %784 = phi i32 [ %782, %778 ], [ 0, %770 ], [ 0, %769 ]
  %785 = invoke noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 47, ptr noundef %636, i32 noundef %784)
          to label %786 unwind label %825

786:                                              ; preds = %783
  %787 = icmp eq i32 %785, -1
  br i1 %787, label %829, label %788

788:                                              ; preds = %786
  %789 = sext i32 %785 to i64
  %790 = getelementptr i16, ptr %629, i64 %789
  %791 = getelementptr i16, ptr %790, i64 1
  %792 = load i16, ptr %791, align 2, !tbaa !71
  %793 = icmp eq i16 %792, 46
  br i1 %793, label %794, label %801

794:                                              ; preds = %788
  %795 = getelementptr i16, ptr %790, i64 2
  %796 = load i16, ptr %795, align 2, !tbaa !71
  %797 = icmp eq i16 %796, 46
  %798 = add nsw i32 %785, 3
  %799 = icmp eq i32 %798, %766
  %800 = select i1 %797, i1 %799, i1 false
  br i1 %800, label %829, label %801

801:                                              ; preds = %794, %788
  %802 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %636, ptr noundef nonnull %629, i32 noundef 0, i32 noundef %785, ptr noundef %802)
          to label %803 unwind label %825

803:                                              ; preds = %801
  %804 = add nsw i32 %766, 3
  br i1 %715, label %818, label %805

805:                                              ; preds = %803
  %806 = load i16, ptr %629, align 2, !tbaa !71
  %807 = icmp eq i16 %806, 0
  br i1 %807, label %818, label %808

808:                                              ; preds = %805, %808
  %809 = phi ptr [ %810, %808 ], [ %629, %805 ]
  %810 = getelementptr inbounds i16, ptr %809, i64 1
  %811 = load i16, ptr %810, align 2, !tbaa !71
  %812 = icmp eq i16 %811, 0
  br i1 %812, label %813, label %808, !llvm.loop !73

813:                                              ; preds = %808
  %814 = ptrtoint ptr %810 to i64
  %815 = sub i64 %814, %757
  %816 = lshr exact i64 %815, 1
  %817 = trunc i64 %816 to i32
  br label %818

818:                                              ; preds = %803, %805, %813
  %819 = phi i32 [ %817, %813 ], [ 0, %805 ], [ 0, %803 ]
  %820 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %643, ptr noundef nonnull %629, i32 noundef %804, i32 noundef %819, ptr noundef %820)
          to label %821 unwind label %825

821:                                              ; preds = %818
  store i16 0, ptr %629, align 2, !tbaa !71
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %629, ptr noundef %636)
          to label %822 unwind label %825

822:                                              ; preds = %821
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %629, ptr noundef %643)
          to label %823 unwind label %825

823:                                              ; preds = %822
  %824 = tail call i32 @llvm.umax.i32(i32 %785, i32 1)
  br label %831

825:                                              ; preds = %758, %765, %801, %818, %821, %822, %783
  %826 = landingpad { ptr, i32 }
          cleanup
  br label %940

827:                                              ; preds = %868, %910, %848, %888, %931
  %828 = landingpad { ptr, i32 }
          cleanup
  br label %940

829:                                              ; preds = %794, %786
  %830 = add nsw i32 %759, 4
  br label %831

831:                                              ; preds = %829, %823
  %832 = phi i32 [ %824, %823 ], [ %830, %829 ]
  br label %758, !llvm.loop !81

833:                                              ; preds = %763
  br i1 %715, label %848, label %834

834:                                              ; preds = %833
  %835 = load i16, ptr %629, align 2, !tbaa !71
  %836 = icmp eq i16 %835, 0
  br i1 %836, label %848, label %837

837:                                              ; preds = %834, %837
  %838 = phi ptr [ %839, %837 ], [ %629, %834 ]
  %839 = getelementptr inbounds i16, ptr %838, i64 1
  %840 = load i16, ptr %839, align 2, !tbaa !71
  %841 = icmp eq i16 %840, 0
  br i1 %841, label %842, label %837, !llvm.loop !73

842:                                              ; preds = %837
  %843 = ptrtoint ptr %839 to i64
  %844 = ptrtoint ptr %629 to i64
  %845 = sub i64 %843, %844
  %846 = lshr exact i64 %845, 1
  %847 = trunc i64 %846 to i32
  br label %848

848:                                              ; preds = %842, %834, %833
  %849 = phi i32 [ %847, %842 ], [ 0, %834 ], [ 0, %833 ]
  %850 = add i32 %849, -3
  %851 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %629, i32 noundef %850, ptr noundef nonnull @_ZN11xercesc_2_7L12SLASH_DOTDOTE, i32 noundef 0, i32 noundef 3)
          to label %852 unwind label %827

852:                                              ; preds = %848
  br i1 %851, label %853, label %907

853:                                              ; preds = %852
  br i1 %715, label %868, label %854

854:                                              ; preds = %853
  %855 = load i16, ptr %629, align 2, !tbaa !71
  %856 = icmp eq i16 %855, 0
  br i1 %856, label %868, label %857

857:                                              ; preds = %854, %857
  %858 = phi ptr [ %859, %857 ], [ %629, %854 ]
  %859 = getelementptr inbounds i16, ptr %858, i64 1
  %860 = load i16, ptr %859, align 2, !tbaa !71
  %861 = icmp eq i16 %860, 0
  br i1 %861, label %862, label %857, !llvm.loop !73

862:                                              ; preds = %857
  %863 = ptrtoint ptr %859 to i64
  %864 = ptrtoint ptr %629 to i64
  %865 = sub i64 %863, %864
  %866 = lshr exact i64 %865, 1
  %867 = trunc i64 %866 to i32
  br label %868

868:                                              ; preds = %853, %854, %862
  %869 = phi i32 [ %867, %862 ], [ 0, %854 ], [ 0, %853 ]
  %870 = add i32 %869, -4
  %871 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %636, ptr noundef nonnull %629, i32 noundef 0, i32 noundef %870, ptr noundef %871)
          to label %872 unwind label %827

872:                                              ; preds = %868
  %873 = icmp eq ptr %636, null
  br i1 %873, label %888, label %874

874:                                              ; preds = %872
  %875 = load i16, ptr %636, align 2, !tbaa !71
  %876 = icmp eq i16 %875, 0
  br i1 %876, label %888, label %877

877:                                              ; preds = %874, %877
  %878 = phi ptr [ %879, %877 ], [ %636, %874 ]
  %879 = getelementptr inbounds i16, ptr %878, i64 1
  %880 = load i16, ptr %879, align 2, !tbaa !71
  %881 = icmp eq i16 %880, 0
  br i1 %881, label %882, label %877, !llvm.loop !73

882:                                              ; preds = %877
  %883 = ptrtoint ptr %879 to i64
  %884 = ptrtoint ptr %636 to i64
  %885 = sub i64 %883, %884
  %886 = lshr exact i64 %885, 1
  %887 = trunc i64 %886 to i32
  br label %888

888:                                              ; preds = %882, %874, %872
  %889 = phi i32 [ %887, %882 ], [ 0, %874 ], [ 0, %872 ]
  %890 = invoke noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 47, ptr noundef %636, i32 noundef %889)
          to label %891 unwind label %827

891:                                              ; preds = %888
  %892 = icmp eq i32 %890, -1
  br i1 %892, label %907, label %893

893:                                              ; preds = %891
  %894 = sext i32 %890 to i64
  %895 = getelementptr i16, ptr %629, i64 %894
  %896 = getelementptr i16, ptr %895, i64 1
  %897 = load i16, ptr %896, align 2, !tbaa !71
  %898 = icmp eq i16 %897, 46
  br i1 %898, label %899, label %906

899:                                              ; preds = %893
  %900 = getelementptr i16, ptr %895, i64 2
  %901 = load i16, ptr %900, align 2, !tbaa !71
  %902 = icmp eq i16 %901, 46
  %903 = add i32 %869, -6
  %904 = icmp eq i32 %890, %903
  %905 = and i1 %904, %902
  br i1 %905, label %907, label %906

906:                                              ; preds = %899, %893
  store i16 0, ptr %896, align 2, !tbaa !71
  br label %907

907:                                              ; preds = %899, %891, %906, %852
  %908 = load ptr, ptr %211, align 8, !tbaa !68
  %909 = icmp eq ptr %908, null
  br i1 %909, label %915, label %910

910:                                              ; preds = %907
  %911 = load ptr, ptr %11, align 8, !tbaa !63
  %912 = load ptr, ptr %911, align 8, !tbaa !54
  %913 = getelementptr inbounds ptr, ptr %912, i64 3
  %914 = load ptr, ptr %913, align 8
  invoke void %914(ptr noundef nonnull align 8 dereferenceable(8) %911, ptr noundef nonnull %908)
          to label %915 unwind label %827

915:                                              ; preds = %910, %907
  %916 = load ptr, ptr %11, align 8, !tbaa !63
  br i1 %715, label %938, label %917

917:                                              ; preds = %915
  %918 = load i16, ptr %629, align 2, !tbaa !71
  %919 = icmp eq i16 %918, 0
  br i1 %919, label %931, label %920

920:                                              ; preds = %917, %920
  %921 = phi ptr [ %922, %920 ], [ %629, %917 ]
  %922 = getelementptr inbounds i16, ptr %921, i64 1
  %923 = load i16, ptr %922, align 2, !tbaa !71
  %924 = icmp eq i16 %923, 0
  br i1 %924, label %925, label %920, !llvm.loop !73

925:                                              ; preds = %920
  %926 = ptrtoint ptr %922 to i64
  %927 = ptrtoint ptr %629 to i64
  %928 = sub i64 %926, %927
  %929 = add i64 %928, 2
  %930 = and i64 %929, 8589934590
  br label %931

931:                                              ; preds = %925, %917
  %932 = phi i64 [ %930, %925 ], [ 2, %917 ]
  %933 = load ptr, ptr %916, align 8, !tbaa !54
  %934 = getelementptr inbounds ptr, ptr %933, i64 2
  %935 = load ptr, ptr %934, align 8
  %936 = invoke noundef ptr %935(ptr noundef nonnull align 8 dereferenceable(8) %916, i64 noundef %932)
          to label %937 unwind label %827

937:                                              ; preds = %931
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %936, ptr nonnull align 2 %629, i64 %932, i1 false)
  br label %938

938:                                              ; preds = %937, %915
  %939 = phi ptr [ %936, %937 ], [ null, %915 ]
  store ptr %939, ptr %211, align 8, !tbaa !68
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %948

940:                                              ; preds = %825, %827, %710, %712, %677
  %941 = phi { ptr, i32 } [ %678, %677 ], [ %711, %710 ], [ %713, %712 ], [ %826, %825 ], [ %828, %827 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  br label %942

942:                                              ; preds = %940, %675
  %943 = phi { ptr, i32 } [ %941, %940 ], [ %676, %675 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  br label %944

944:                                              ; preds = %942, %673
  %945 = phi { ptr, i32 } [ %943, %942 ], [ %674, %673 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  br label %946

946:                                              ; preds = %944, %671
  %947 = phi { ptr, i32 } [ %945, %944 ], [ %672, %671 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %951

948:                                              ; preds = %209, %938, %554, %446, %451, %416, %379, %410
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %949

949:                                              ; preds = %196, %948
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %950

950:                                              ; preds = %68, %949
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void

951:                                              ; preds = %669, %946, %414
  %952 = phi { ptr, i32 } [ %415, %414 ], [ %947, %946 ], [ %670, %669 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %953

953:                                              ; preds = %412, %951, %193, %179
  %954 = phi { ptr, i32 } [ %194, %193 ], [ %180, %179 ], [ %952, %951 ], [ %413, %412 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %955

955:                                              ; preds = %99, %103, %177, %953, %147, %107, %105, %101, %65, %63
  %956 = phi { ptr, i32 } [ %64, %63 ], [ %66, %65 ], [ %100, %99 ], [ %102, %101 ], [ %104, %103 ], [ %106, %105 ], [ %108, %107 ], [ %148, %147 ], [ %954, %953 ], [ %178, %177 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  resume { ptr, i32 } %956

957:                                              ; preds = %62
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !53 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store ptr %3, ptr %7, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_76XMLUri10initializeEPKS0_PKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2)
          to label %18 unwind label %8

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #16
  invoke void @__cxa_rethrow() #17
          to label %33 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %30

18:                                               ; preds = %4
  ret void

19:                                               ; preds = %16, %8
  %20 = phi ptr [ null, %16 ], [ @_ZN11xercesc_2_76XMLUri7cleanUpEv, %8 ]
  %21 = phi ptr [ null, %16 ], [ %0, %8 ]
  %22 = phi { ptr, i32 } [ %17, %16 ], [ %9, %8 ]
  %23 = icmp eq ptr %21, null
  %24 = or i1 %12, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %29 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #18
  unreachable

29:                                               ; preds = %19, %25
  resume { ptr, i32 } %22

30:                                               ; preds = %16
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #18
  unreachable

33:                                               ; preds = %13
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  store ptr %7, ptr %5, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %18 unwind label %8

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #16
  invoke void @__cxa_rethrow() #17
          to label %33 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %30

18:                                               ; preds = %2
  ret void

19:                                               ; preds = %16, %8
  %20 = phi ptr [ null, %16 ], [ @_ZN11xercesc_2_76XMLUri7cleanUpEv, %8 ]
  %21 = phi ptr [ null, %16 ], [ %0, %8 ]
  %22 = phi { ptr, i32 } [ %17, %16 ], [ %9, %8 ]
  %23 = icmp eq ptr %21, null
  %24 = or i1 %12, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(88) %21)
          to label %29 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #18
  unreachable

29:                                               ; preds = %19, %25
  resume { ptr, i32 } %22

30:                                               ; preds = %16
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #18
  unreachable

33:                                               ; preds = %13
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  store ptr %4, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load i16, ptr %7, align 2, !tbaa !71
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !71
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !73

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %7 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 2
  %22 = and i64 %21, 8589934590
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ 2, %9 ]
  %25 = load ptr, ptr %4, align 8, !tbaa !54
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %24)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr nonnull align 2 %7, i64 %24, i1 false)
  br label %29

29:                                               ; preds = %2, %23
  %30 = phi ptr [ %28, %23 ], [ null, %2 ]
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !64
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = load ptr, ptr %5, align 8, !tbaa !63
  %35 = icmp eq ptr %33, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %29
  %37 = load i16, ptr %33, align 2, !tbaa !71
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %41, %39 ], [ %33, %36 ]
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !71
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %39, !llvm.loop !73

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %33 to i64
  %47 = sub i64 %45, %46
  %48 = add i64 %47, 2
  %49 = and i64 %48, 8589934590
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi i64 [ %49, %44 ], [ 2, %36 ]
  %52 = load ptr, ptr %34, align 8, !tbaa !54
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %51)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr nonnull align 2 %33, i64 %51, i1 false)
  br label %56

56:                                               ; preds = %29, %50
  %57 = phi ptr [ %55, %50 ], [ null, %29 ]
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  store ptr %57, ptr %58, align 8, !tbaa !65
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !66
  %61 = load ptr, ptr %5, align 8, !tbaa !63
  %62 = icmp eq ptr %60, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %56
  %64 = load i16, ptr %60, align 2, !tbaa !71
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %68, %66 ], [ %60, %63 ]
  %68 = getelementptr inbounds i16, ptr %67, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !71
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %66, !llvm.loop !73

71:                                               ; preds = %66
  %72 = ptrtoint ptr %68 to i64
  %73 = ptrtoint ptr %60 to i64
  %74 = sub i64 %72, %73
  %75 = add i64 %74, 2
  %76 = and i64 %75, 8589934590
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi i64 [ %76, %71 ], [ 2, %63 ]
  %79 = load ptr, ptr %61, align 8, !tbaa !54
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %61, i64 noundef %78)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %82, ptr nonnull align 2 %60, i64 %78, i1 false)
  br label %83

83:                                               ; preds = %56, %77
  %84 = phi ptr [ %82, %77 ], [ null, %56 ]
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  store ptr %84, ptr %85, align 8, !tbaa !66
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !57
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %87, ptr %88, align 8, !tbaa !57
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !67
  %91 = load ptr, ptr %5, align 8, !tbaa !63
  %92 = icmp eq ptr %90, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %83
  %94 = load i16, ptr %90, align 2, !tbaa !71
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %93, %96
  %97 = phi ptr [ %98, %96 ], [ %90, %93 ]
  %98 = getelementptr inbounds i16, ptr %97, i64 1
  %99 = load i16, ptr %98, align 2, !tbaa !71
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %96, !llvm.loop !73

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i64
  %103 = ptrtoint ptr %90 to i64
  %104 = sub i64 %102, %103
  %105 = add i64 %104, 2
  %106 = and i64 %105, 8589934590
  br label %107

107:                                              ; preds = %101, %93
  %108 = phi i64 [ %106, %101 ], [ 2, %93 ]
  %109 = load ptr, ptr %91, align 8, !tbaa !54
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %91, i64 noundef %108)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %112, ptr nonnull align 2 %90, i64 %108, i1 false)
  br label %113

113:                                              ; preds = %83, %107
  %114 = phi ptr [ %112, %107 ], [ null, %83 ]
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  store ptr %114, ptr %115, align 8, !tbaa !67
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !68
  %118 = load ptr, ptr %5, align 8, !tbaa !63
  %119 = icmp eq ptr %117, null
  br i1 %119, label %140, label %120

120:                                              ; preds = %113
  %121 = load i16, ptr %117, align 2, !tbaa !71
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %120, %123
  %124 = phi ptr [ %125, %123 ], [ %117, %120 ]
  %125 = getelementptr inbounds i16, ptr %124, i64 1
  %126 = load i16, ptr %125, align 2, !tbaa !71
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %123, !llvm.loop !73

128:                                              ; preds = %123
  %129 = ptrtoint ptr %125 to i64
  %130 = ptrtoint ptr %117 to i64
  %131 = sub i64 %129, %130
  %132 = add i64 %131, 2
  %133 = and i64 %132, 8589934590
  br label %134

134:                                              ; preds = %128, %120
  %135 = phi i64 [ %133, %128 ], [ 2, %120 ]
  %136 = load ptr, ptr %118, align 8, !tbaa !54
  %137 = getelementptr inbounds ptr, ptr %136, i64 2
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(8) %118, i64 noundef %135)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %139, ptr nonnull align 2 %117, i64 %135, i1 false)
  br label %140

140:                                              ; preds = %113, %134
  %141 = phi ptr [ %139, %134 ], [ null, %113 ]
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  store ptr %141, ptr %142, align 8, !tbaa !68
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !69
  %145 = load ptr, ptr %5, align 8, !tbaa !63
  %146 = icmp eq ptr %144, null
  br i1 %146, label %167, label %147

147:                                              ; preds = %140
  %148 = load i16, ptr %144, align 2, !tbaa !71
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %147, %150
  %151 = phi ptr [ %152, %150 ], [ %144, %147 ]
  %152 = getelementptr inbounds i16, ptr %151, i64 1
  %153 = load i16, ptr %152, align 2, !tbaa !71
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %150, !llvm.loop !73

155:                                              ; preds = %150
  %156 = ptrtoint ptr %152 to i64
  %157 = ptrtoint ptr %144 to i64
  %158 = sub i64 %156, %157
  %159 = add i64 %158, 2
  %160 = and i64 %159, 8589934590
  br label %161

161:                                              ; preds = %155, %147
  %162 = phi i64 [ %160, %155 ], [ 2, %147 ]
  %163 = load ptr, ptr %145, align 8, !tbaa !54
  %164 = getelementptr inbounds ptr, ptr %163, i64 2
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %145, i64 noundef %162)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %166, ptr nonnull align 2 %144, i64 %162, i1 false)
  br label %167

167:                                              ; preds = %140, %161
  %168 = phi ptr [ %166, %161 ], [ null, %140 ]
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  store ptr %168, ptr %169, align 8, !tbaa !69
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 8
  %171 = load ptr, ptr %170, align 8, !tbaa !70
  %172 = load ptr, ptr %5, align 8, !tbaa !63
  %173 = icmp eq ptr %171, null
  br i1 %173, label %194, label %174

174:                                              ; preds = %167
  %175 = load i16, ptr %171, align 2, !tbaa !71
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174, %177
  %178 = phi ptr [ %179, %177 ], [ %171, %174 ]
  %179 = getelementptr inbounds i16, ptr %178, i64 1
  %180 = load i16, ptr %179, align 2, !tbaa !71
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %177, !llvm.loop !73

182:                                              ; preds = %177
  %183 = ptrtoint ptr %179 to i64
  %184 = ptrtoint ptr %171 to i64
  %185 = sub i64 %183, %184
  %186 = add i64 %185, 2
  %187 = and i64 %186, 8589934590
  br label %188

188:                                              ; preds = %182, %174
  %189 = phi i64 [ %187, %182 ], [ 2, %174 ]
  %190 = load ptr, ptr %172, align 8, !tbaa !54
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8
  %193 = tail call noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(8) %172, i64 noundef %189)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %193, ptr nonnull align 2 %171, i64 %189, i1 false)
  br label %194

194:                                              ; preds = %167, %188
  %195 = phi ptr [ %193, %188 ], [ null, %167 ]
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  store ptr %195, ptr %196, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN11xercesc_2_76XMLUriaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  invoke void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %13 unwind label %3

3:                                                ; preds = %2
  %4 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %5 = extractvalue { ptr, i32 } %4, 1
  %6 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = extractvalue { ptr, i32 } %4, 0
  %10 = tail call ptr @__cxa_begin_catch(ptr %9) #16
  invoke void @__cxa_rethrow() #17
          to label %28 unwind label %11

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %14 unwind label %25

13:                                               ; preds = %2
  ret ptr %0

14:                                               ; preds = %11, %3
  %15 = phi ptr [ null, %11 ], [ @_ZN11xercesc_2_76XMLUri7cleanUpEv, %3 ]
  %16 = phi ptr [ null, %11 ], [ %0, %3 ]
  %17 = phi { ptr, i32 } [ %12, %11 ], [ %4, %3 ]
  %18 = icmp eq ptr %16, null
  %19 = or i1 %7, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(88) %16)
          to label %24 unwind label %21

21:                                               ; preds = %20
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #18
  unreachable

24:                                               ; preds = %14, %20
  resume { ptr, i32 } %17

25:                                               ; preds = %11
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #18
  unreachable

28:                                               ; preds = %8
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %5 unwind label %2

2:                                                ; preds = %1
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #18
  unreachable

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri16initializeSchemeEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_7L17SCHEME_SEPARATORSE)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 827, i32 noundef 272, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  br label %48

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = icmp eq ptr %1, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load i16, ptr %1, align 2, !tbaa !71
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %22, %20 ], [ %1, %17 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !71
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %20, !llvm.loop !73

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i64
  %27 = ptrtoint ptr %1 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, 2
  %30 = and i64 %29, 8589934590
  br label %31

31:                                               ; preds = %13, %17, %25
  %32 = phi i64 [ %30, %25 ], [ 2, %17 ], [ 2, %13 ]
  %33 = load ptr, ptr %15, align 8, !tbaa !54
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %37 = load ptr, ptr %14, align 8, !tbaa !63
  store ptr %36, ptr %3, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !78
  %39 = ptrtoint ptr %4 to i64
  %40 = ptrtoint ptr %1 to i64
  %41 = sub i64 %39, %40
  %42 = lshr exact i64 %41, 1
  %43 = trunc i64 %42 to i32
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %1, i32 noundef 0, i32 noundef %43, ptr noundef %37)
          to label %44 unwind label %46

44:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_76XMLUri9setSchemeEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %36)
          to label %45 unwind label %46

45:                                               ; preds = %44
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void

46:                                               ; preds = %44, %31
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %48

48:                                               ; preds = %46, %11
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %12, %11 ]
  resume { ptr, i32 } %49
}

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri19initializeAuthorityEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 2, !tbaa !71
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %1, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !71
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !73

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %2, %7, %15
  %22 = phi i32 [ %20, %15 ], [ 0, %7 ], [ 0, %2 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = add nsw i32 %22, 1
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 1
  %28 = load ptr, ptr %24, align 8, !tbaa !54
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %27)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %32 = load ptr, ptr %23, align 8, !tbaa !63
  store ptr %31, ptr %3, align 8, !tbaa !76
  %33 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !78
  %34 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 64)
          to label %35 unwind label %41

35:                                               ; preds = %21
  %36 = icmp eq i32 %34, -1
  br i1 %36, label %43, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %23, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %1, i32 noundef 0, i32 noundef %34, ptr noundef %38)
          to label %39 unwind label %41

39:                                               ; preds = %37
  %40 = add nuw nsw i32 %34, 1
  br label %43

41:                                               ; preds = %37, %21
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %209

43:                                               ; preds = %35, %39
  %44 = phi ptr [ %31, %39 ], [ null, %35 ]
  %45 = phi i32 [ %40, %39 ], [ 0, %35 ]
  %46 = load ptr, ptr %23, align 8, !tbaa !63
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef %27)
          to label %51 unwind label %75

51:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %52 = load ptr, ptr %23, align 8, !tbaa !63
  store ptr %50, ptr %4, align 8, !tbaa !76
  %53 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !78
  %54 = icmp slt i32 %45, %22
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = sext i32 %45 to i64
  %57 = getelementptr inbounds i16, ptr %1, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !71
  %59 = icmp eq i16 %58, 91
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %57, i16 noundef zeroext 93)
          to label %62 unwind label %77

62:                                               ; preds = %60
  %63 = icmp eq i32 %61, -1
  br i1 %63, label %83, label %64

64:                                               ; preds = %62
  %65 = add i32 %45, 1
  %66 = add i32 %65, %61
  %67 = icmp slt i32 %66, %22
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = sext i32 %66 to i64
  %70 = getelementptr inbounds i16, ptr %1, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !71
  %72 = icmp eq i16 %71, 58
  %73 = add nuw nsw i32 %61, 1
  %74 = select i1 %72, i32 %73, i32 -1
  br label %83

75:                                               ; preds = %43
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %209

77:                                               ; preds = %94, %88, %79, %60
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %207

79:                                               ; preds = %55, %51
  %80 = sext i32 %45 to i64
  %81 = getelementptr inbounds i16, ptr %1, i64 %80
  %82 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %81, i16 noundef zeroext 58)
          to label %83 unwind label %77

83:                                               ; preds = %68, %79, %64, %62
  %84 = phi i32 [ -1, %62 ], [ -1, %64 ], [ %74, %68 ], [ %82, %79 ]
  %85 = icmp eq i32 %84, -1
  %86 = sext i32 %45 to i64
  %87 = getelementptr inbounds i16, ptr %1, i64 %86
  br i1 %85, label %94, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %23, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %87, i32 noundef 0, i32 noundef %84, ptr noundef %89)
          to label %90 unwind label %77

90:                                               ; preds = %88
  %91 = add nuw nsw i32 %84, 1
  %92 = add nsw i32 %91, %45
  %93 = icmp ne i32 %91, -1
  br label %97

94:                                               ; preds = %83
  %95 = sub nsw i32 %22, %45
  %96 = load ptr, ptr %23, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %87, i32 noundef 0, i32 noundef %95, ptr noundef %96)
          to label %97 unwind label %77

97:                                               ; preds = %94, %90
  %98 = phi i32 [ %92, %90 ], [ %22, %94 ]
  %99 = phi i1 [ %93, %90 ], [ false, %94 ]
  %100 = load ptr, ptr %23, align 8, !tbaa !63
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef %27)
          to label %105 unwind label %127

105:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %106 = load ptr, ptr %23, align 8, !tbaa !63
  store ptr %104, ptr %5, align 8, !tbaa !76
  %107 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %106, ptr %107, align 8, !tbaa !78
  %108 = icmp eq ptr %50, null
  br i1 %108, label %131, label %109

109:                                              ; preds = %105
  %110 = load i16, ptr %50, align 2, !tbaa !71
  %111 = icmp ne i16 %110, 0
  %112 = select i1 %111, i1 %99, i1 false
  %113 = icmp slt i32 %98, %22
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = sext i32 %98 to i64
  %117 = getelementptr inbounds i16, ptr %1, i64 %116
  %118 = sub nsw i32 %22, %98
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %104, ptr noundef %117, i32 noundef 0, i32 noundef %118, ptr noundef %106)
          to label %119 unwind label %129

119:                                              ; preds = %115
  %120 = icmp eq ptr %104, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %119
  %122 = load i16, ptr %104, align 2, !tbaa !71
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %23, align 8, !tbaa !63
  %126 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef nonnull %104, ptr noundef %125)
          to label %131 unwind label %129

127:                                              ; preds = %97
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %207

129:                                              ; preds = %196, %170, %205, %149, %140, %131, %124, %115
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %207

131:                                              ; preds = %124, %119, %121, %109, %105
  %132 = phi i32 [ -1, %121 ], [ -1, %119 ], [ -1, %109 ], [ -1, %105 ], [ %126, %124 ]
  %133 = load ptr, ptr %23, align 8, !tbaa !63
  %134 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiS2_PNS_13MemoryManagerE(ptr noundef %50, i32 noundef %132, ptr noundef %44, ptr noundef %133)
          to label %135 unwind label %129

135:                                              ; preds = %131
  br i1 %134, label %136, label %205

136:                                              ; preds = %135
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !66
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %23, align 8, !tbaa !63
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = getelementptr inbounds ptr, ptr %142, i64 3
  %144 = load ptr, ptr %143, align 8
  invoke void %144(ptr noundef nonnull align 8 dereferenceable(8) %141, ptr noundef nonnull %138)
          to label %145 unwind label %129

145:                                              ; preds = %140, %136
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !65
  %148 = icmp eq ptr %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %23, align 8, !tbaa !63
  %151 = load ptr, ptr %150, align 8, !tbaa !54
  %152 = getelementptr inbounds ptr, ptr %151, i64 3
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef nonnull %147)
          to label %154 unwind label %129

154:                                              ; preds = %145, %149
  %155 = load ptr, ptr %23, align 8, !tbaa !63
  br i1 %108, label %177, label %156

156:                                              ; preds = %154
  %157 = load i16, ptr %50, align 2, !tbaa !71
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %156, %159
  %160 = phi ptr [ %161, %159 ], [ %50, %156 ]
  %161 = getelementptr inbounds i16, ptr %160, i64 1
  %162 = load i16, ptr %161, align 2, !tbaa !71
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %159, !llvm.loop !73

164:                                              ; preds = %159
  %165 = ptrtoint ptr %161 to i64
  %166 = ptrtoint ptr %50 to i64
  %167 = sub i64 %165, %166
  %168 = add i64 %167, 2
  %169 = and i64 %168, 8589934590
  br label %170

170:                                              ; preds = %164, %156
  %171 = phi i64 [ %169, %164 ], [ 2, %156 ]
  %172 = load ptr, ptr %155, align 8, !tbaa !54
  %173 = getelementptr inbounds ptr, ptr %172, i64 2
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(8) %155, i64 noundef %171)
          to label %176 unwind label %129

176:                                              ; preds = %170
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %175, ptr nonnull align 2 %50, i64 %171, i1 false)
  br label %177

177:                                              ; preds = %176, %154
  %178 = phi ptr [ %175, %176 ], [ null, %154 ]
  store ptr %178, ptr %137, align 8, !tbaa !66
  %179 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %132, ptr %179, align 8, !tbaa !57
  %180 = load ptr, ptr %23, align 8, !tbaa !63
  %181 = icmp eq ptr %44, null
  br i1 %181, label %203, label %182

182:                                              ; preds = %177
  %183 = load i16, ptr %44, align 2, !tbaa !71
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %182, %185
  %186 = phi ptr [ %187, %185 ], [ %44, %182 ]
  %187 = getelementptr inbounds i16, ptr %186, i64 1
  %188 = load i16, ptr %187, align 2, !tbaa !71
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %190, label %185, !llvm.loop !73

190:                                              ; preds = %185
  %191 = ptrtoint ptr %187 to i64
  %192 = ptrtoint ptr %44 to i64
  %193 = sub i64 %191, %192
  %194 = add i64 %193, 2
  %195 = and i64 %194, 8589934590
  br label %196

196:                                              ; preds = %190, %182
  %197 = phi i64 [ %195, %190 ], [ 2, %182 ]
  %198 = load ptr, ptr %180, align 8, !tbaa !54
  %199 = getelementptr inbounds ptr, ptr %198, i64 2
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(8) %180, i64 noundef %197)
          to label %202 unwind label %129

202:                                              ; preds = %196
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %201, ptr nonnull align 2 %44, i64 %197, i1 false)
  br label %203

203:                                              ; preds = %202, %177
  %204 = phi ptr [ %201, %202 ], [ null, %177 ]
  store ptr %204, ptr %146, align 8, !tbaa !65
  br label %206

205:                                              ; preds = %135
  invoke void @_ZN11xercesc_2_76XMLUri20setRegBasedAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
          to label %206 unwind label %129

206:                                              ; preds = %205, %203
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void

207:                                              ; preds = %127, %129, %77
  %208 = phi { ptr, i32 } [ %78, %77 ], [ %130, %129 ], [ %128, %127 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %209

209:                                              ; preds = %75, %207, %41
  %210 = phi { ptr, i32 } [ %42, %41 ], [ %208, %207 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  resume { ptr, i32 } %210
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7setHostEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %8, %4
  store ptr null, ptr %5, align 8, !tbaa !66
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %16)
  br label %24

24:                                               ; preds = %14, %18
  store ptr null, ptr %15, align 8, !tbaa !65
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %25, align 8, !tbaa !57
  br label %80

26:                                               ; preds = %2
  %27 = load i16, ptr %1, align 2, !tbaa !71
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %31)
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %35 = load ptr, ptr %30, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str, i32 noundef 1179, i32 noundef 271, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_HOSTE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

37:                                               ; preds = %33
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %34) #16
  resume { ptr, i32 } %38

39:                                               ; preds = %29, %26
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !63
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull %41)
  br label %49

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = load i16, ptr %1, align 2, !tbaa !71
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49, %54
  %55 = phi ptr [ %56, %54 ], [ %1, %49 ]
  %56 = getelementptr inbounds i16, ptr %55, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !71
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %54, !llvm.loop !73

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i64
  %61 = ptrtoint ptr %1 to i64
  %62 = sub i64 %60, %61
  %63 = add i64 %62, 2
  %64 = and i64 %63, 8589934590
  br label %65

65:                                               ; preds = %59, %49
  %66 = phi i64 [ %64, %59 ], [ 2, %49 ]
  %67 = load ptr, ptr %51, align 8, !tbaa !54
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %66)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %70, ptr nonnull align 2 %1, i64 %66, i1 false)
  store ptr %70, ptr %40, align 8, !tbaa !66
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !67
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %65
  %75 = load ptr, ptr %50, align 8, !tbaa !63
  %76 = load ptr, ptr %75, align 8, !tbaa !54
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull %72)
  br label %79

79:                                               ; preds = %65, %74
  store ptr null, ptr %71, align 8, !tbaa !67
  br label %80

80:                                               ; preds = %79, %24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri14initializePathEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = alloca [65 x i16], align 16
  %6 = alloca [65 x i16], align 16
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 849, i32 noundef 266, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #16
  br label %295

19:                                               ; preds = %2
  %20 = load i16, ptr %1, align 2, !tbaa !71
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %1, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !71
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !llvm.loop !73

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %1 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %19, %27
  %34 = phi i32 [ %32, %27 ], [ 0, %19 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %130

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  %40 = icmp eq i16 %20, 47
  %41 = or i1 %40, %39
  %42 = zext nneg i32 %34 to i64
  br i1 %41, label %43, label %86

43:                                               ; preds = %36, %83
  %44 = phi i64 [ %84, %83 ], [ 0, %36 ]
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !71
  switch i16 %46, label %67 [
    i16 63, label %126
    i16 35, label %126
    i16 37, label %47
  ]

47:                                               ; preds = %43
  %48 = add nuw nsw i64 %44, 2
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %34, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = getelementptr i16, ptr %45, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !71
  %54 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %53)
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds i16, ptr %1, i64 %48
  %57 = load i16, ptr %56, align 2, !tbaa !71
  %58 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %57)
  br i1 %58, label %83, label %59

59:                                               ; preds = %55, %51, %47
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %3, ptr noundef nonnull align 2 dereferenceable(6) %45, i64 6, i1 false)
  %60 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 3
  store i16 0, ptr %60, align 2, !tbaa !71
  %61 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str, i32 noundef 888, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %63)
          to label %64 unwind label %65

64:                                               ; preds = %59
  call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %61) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #16
  br label %295

67:                                               ; preds = %43
  %68 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %46)
  br i1 %68, label %83, label %69

69:                                               ; preds = %67
  %70 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %46)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15PATH_CHARACTERSE, i16 noundef zeroext %46)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #16
  store i16 %46, ptr %4, align 16, !tbaa !71
  %76 = getelementptr inbounds [65 x i16], ptr %4, i64 0, i64 1
  store i16 0, ptr %76, align 2, !tbaa !71
  %77 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull @.str, i32 noundef 901, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %79)
          to label %80 unwind label %81

80:                                               ; preds = %75
  call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

81:                                               ; preds = %75
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %77) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #16
  br label %295

83:                                               ; preds = %67, %69, %72, %55
  %84 = add nuw nsw i64 %44, 1
  %85 = icmp eq i64 %84, %42
  br i1 %85, label %130, label %43, !llvm.loop !82

86:                                               ; preds = %36, %123
  %87 = phi i64 [ %124, %123 ], [ 0, %36 ]
  %88 = getelementptr inbounds i16, ptr %1, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !71
  switch i16 %89, label %110 [
    i16 63, label %128
    i16 35, label %128
    i16 37, label %90
  ]

90:                                               ; preds = %86
  %91 = add nuw nsw i64 %87, 2
  %92 = trunc i64 %91 to i32
  %93 = icmp sgt i32 %34, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr i16, ptr %88, i64 1
  %96 = load i16, ptr %95, align 2, !tbaa !71
  %97 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %96)
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds i16, ptr %1, i64 %91
  %100 = load i16, ptr %99, align 2, !tbaa !71
  %101 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %100)
  br i1 %101, label %123, label %102

102:                                              ; preds = %98, %94, %90
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %5, ptr noundef nonnull align 2 dereferenceable(6) %88, i64 6, i1 false)
  %103 = getelementptr inbounds [65 x i16], ptr %5, i64 0, i64 3
  store i16 0, ptr %103, align 2, !tbaa !71
  %104 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %104, ptr noundef nonnull @.str, i32 noundef 933, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %106)
          to label %107 unwind label %108

107:                                              ; preds = %102
  call void @__cxa_throw(ptr nonnull %104, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %104) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #16
  br label %295

110:                                              ; preds = %86
  %111 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %89)
  br i1 %111, label %123, label %112

112:                                              ; preds = %110
  %113 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE, i16 noundef zeroext %89)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %6) #16
  store i16 %89, ptr %6, align 16, !tbaa !71
  %116 = getelementptr inbounds [65 x i16], ptr %6, i64 0, i64 1
  store i16 0, ptr %116, align 2, !tbaa !71
  %117 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %117, ptr noundef nonnull @.str, i32 noundef 950, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %119)
          to label %120 unwind label %121

120:                                              ; preds = %115
  call void @__cxa_throw(ptr nonnull %117, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

121:                                              ; preds = %115
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %117) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %6) #16
  br label %295

123:                                              ; preds = %110, %112, %98
  %124 = add nuw nsw i64 %87, 1
  %125 = icmp eq i64 %124, %42
  br i1 %125, label %130, label %86, !llvm.loop !83

126:                                              ; preds = %43, %43
  %127 = trunc i64 %44 to i32
  br label %130

128:                                              ; preds = %86, %86
  %129 = trunc i64 %87 to i32
  br label %130

130:                                              ; preds = %128, %123, %126, %83, %33
  %131 = phi i32 [ 0, %33 ], [ %127, %126 ], [ %34, %83 ], [ %129, %128 ], [ %34, %123 ]
  %132 = phi i16 [ 0, %33 ], [ %46, %83 ], [ %46, %126 ], [ %89, %123 ], [ %89, %128 ]
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !68
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %138 = load ptr, ptr %137, align 8, !tbaa !63
  %139 = load ptr, ptr %138, align 8, !tbaa !54
  %140 = getelementptr inbounds ptr, ptr %139, i64 3
  %141 = load ptr, ptr %140, align 8
  tail call void %141(ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef nonnull %134)
  br label %142

142:                                              ; preds = %136, %130
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %144 = load ptr, ptr %143, align 8, !tbaa !63
  %145 = add nuw nsw i32 %131, 1
  %146 = shl nuw i32 %145, 1
  %147 = zext i32 %146 to i64
  %148 = load ptr, ptr %144, align 8, !tbaa !54
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(8) %144, i64 noundef %147)
  store ptr %151, ptr %133, align 8, !tbaa !68
  %152 = load ptr, ptr %143, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %151, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %131, ptr noundef %152)
  %153 = icmp eq i16 %132, 63
  br i1 %153, label %154, label %220

154:                                              ; preds = %142
  %155 = icmp slt i32 %145, %34
  br i1 %155, label %156, label %199

156:                                              ; preds = %154
  %157 = zext i32 %145 to i64
  br label %158

158:                                              ; preds = %156, %193
  %159 = phi i64 [ %157, %156 ], [ %194, %193 ]
  %160 = getelementptr inbounds i16, ptr %1, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !71
  switch i16 %161, label %181 [
    i16 35, label %197
    i16 37, label %162
  ]

162:                                              ; preds = %158
  %163 = add nuw nsw i64 %159, 2
  %164 = trunc i64 %163 to i32
  %165 = icmp sgt i32 %34, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %162
  %167 = getelementptr i16, ptr %160, i64 1
  %168 = load i16, ptr %167, align 2, !tbaa !71
  %169 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %168)
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr inbounds i16, ptr %1, i64 %163
  %172 = load i16, ptr %171, align 2, !tbaa !71
  %173 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %172)
  br i1 %173, label %193, label %174

174:                                              ; preds = %170, %166, %162
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %7, ptr noundef nonnull align 2 dereferenceable(6) %160, i64 6, i1 false)
  %175 = getelementptr inbounds [65 x i16], ptr %7, i64 0, i64 3
  store i16 0, ptr %175, align 2, !tbaa !71
  %176 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %177 = load ptr, ptr %143, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %176, ptr noundef nonnull @.str, i32 noundef 992, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef %177)
          to label %178 unwind label %179

178:                                              ; preds = %174
  call void @__cxa_throw(ptr nonnull %176, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

179:                                              ; preds = %174
  %180 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %176) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #16
  br label %295

181:                                              ; preds = %158
  %182 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %161)
  br i1 %182, label %193, label %183

183:                                              ; preds = %181
  %184 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE, i16 noundef zeroext %161)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #16
  store i16 %161, ptr %8, align 16, !tbaa !71
  %187 = getelementptr inbounds [65 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %187, align 2, !tbaa !71
  %188 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %189 = load ptr, ptr %143, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %188, ptr noundef nonnull @.str, i32 noundef 1004, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef %189)
          to label %190 unwind label %191

190:                                              ; preds = %186
  call void @__cxa_throw(ptr nonnull %188, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

191:                                              ; preds = %186
  %192 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %188) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #16
  br label %295

193:                                              ; preds = %181, %183, %170
  %194 = add nuw nsw i64 %159, 1
  %195 = trunc i64 %194 to i32
  %196 = icmp sgt i32 %34, %195
  br i1 %196, label %158, label %199, !llvm.loop !84

197:                                              ; preds = %158
  %198 = trunc i64 %159 to i32
  br label %199

199:                                              ; preds = %197, %193, %154
  %200 = phi i32 [ %145, %154 ], [ %198, %197 ], [ %34, %193 ]
  %201 = phi i16 [ %132, %154 ], [ %161, %193 ], [ %161, %197 ]
  %202 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %203 = load ptr, ptr %202, align 8, !tbaa !69
  %204 = icmp eq ptr %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %143, align 8, !tbaa !63
  %207 = load ptr, ptr %206, align 8, !tbaa !54
  %208 = getelementptr inbounds ptr, ptr %207, i64 3
  %209 = load ptr, ptr %208, align 8
  tail call void %209(ptr noundef nonnull align 8 dereferenceable(8) %206, ptr noundef nonnull %203)
  br label %210

210:                                              ; preds = %205, %199
  %211 = load ptr, ptr %143, align 8, !tbaa !63
  %212 = sub i32 %200, %131
  %213 = sext i32 %212 to i64
  %214 = shl nsw i64 %213, 1
  %215 = load ptr, ptr %211, align 8, !tbaa !54
  %216 = getelementptr inbounds ptr, ptr %215, i64 2
  %217 = load ptr, ptr %216, align 8
  %218 = tail call noundef ptr %217(ptr noundef nonnull align 8 dereferenceable(8) %211, i64 noundef %214)
  store ptr %218, ptr %202, align 8, !tbaa !69
  %219 = load ptr, ptr %143, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %218, ptr noundef nonnull %1, i32 noundef %145, i32 noundef %200, ptr noundef %219)
  br label %220

220:                                              ; preds = %210, %142
  %221 = phi i32 [ %200, %210 ], [ %131, %142 ]
  %222 = phi i16 [ %201, %210 ], [ %132, %142 ]
  %223 = icmp eq i16 %222, 35
  br i1 %223, label %224, label %294

224:                                              ; preds = %220
  %225 = add nsw i32 %221, 1
  %226 = icmp slt i32 %225, %34
  br i1 %226, label %227, label %271

227:                                              ; preds = %224
  %228 = sext i32 %225 to i64
  %229 = sext i32 %34 to i64
  br label %230

230:                                              ; preds = %227, %265
  %231 = phi i64 [ %228, %227 ], [ %266, %265 ]
  %232 = getelementptr inbounds i16, ptr %1, i64 %231
  %233 = load i16, ptr %232, align 2, !tbaa !71
  %234 = icmp eq i16 %233, 37
  br i1 %234, label %235, label %253

235:                                              ; preds = %230
  %236 = add nsw i64 %231, 2
  %237 = icmp slt i64 %236, %229
  br i1 %237, label %238, label %246

238:                                              ; preds = %235
  %239 = getelementptr i16, ptr %232, i64 1
  %240 = load i16, ptr %239, align 2, !tbaa !71
  %241 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %240)
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = getelementptr inbounds i16, ptr %1, i64 %236
  %244 = load i16, ptr %243, align 2, !tbaa !71
  %245 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %244)
  br i1 %245, label %265, label %246

246:                                              ; preds = %242, %238, %235
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %9, ptr noundef nonnull align 2 dereferenceable(6) %232, i64 6, i1 false)
  %247 = getelementptr inbounds [65 x i16], ptr %9, i64 0, i64 3
  store i16 0, ptr %247, align 2, !tbaa !71
  %248 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %249 = load ptr, ptr %143, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %248, ptr noundef nonnull @.str, i32 noundef 1043, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef %249)
          to label %250 unwind label %251

250:                                              ; preds = %246
  call void @__cxa_throw(ptr nonnull %248, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

251:                                              ; preds = %246
  %252 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %248) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #16
  br label %295

253:                                              ; preds = %230
  %254 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %233)
  br i1 %254, label %265, label %255

255:                                              ; preds = %253
  %256 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE, i16 noundef zeroext %233)
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %265

258:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #16
  store i16 %233, ptr %10, align 16, !tbaa !71
  %259 = getelementptr inbounds [65 x i16], ptr %10, i64 0, i64 1
  store i16 0, ptr %259, align 2, !tbaa !71
  %260 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %261 = load ptr, ptr %143, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %260, ptr noundef nonnull @.str, i32 noundef 1055, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef %261)
          to label %262 unwind label %263

262:                                              ; preds = %258
  call void @__cxa_throw(ptr nonnull %260, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

263:                                              ; preds = %258
  %264 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %260) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #16
  br label %295

265:                                              ; preds = %253, %255, %242
  %266 = add nsw i64 %231, 1
  %267 = trunc i64 %266 to i32
  %268 = icmp eq i32 %34, %267
  br i1 %268, label %269, label %230, !llvm.loop !85

269:                                              ; preds = %265
  %270 = trunc i64 %266 to i32
  br label %271

271:                                              ; preds = %269, %224
  %272 = phi i32 [ %225, %224 ], [ %270, %269 ]
  %273 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %274 = load ptr, ptr %273, align 8, !tbaa !70
  %275 = icmp eq ptr %274, null
  br i1 %275, label %281, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr %143, align 8, !tbaa !63
  %278 = load ptr, ptr %277, align 8, !tbaa !54
  %279 = getelementptr inbounds ptr, ptr %278, i64 3
  %280 = load ptr, ptr %279, align 8
  tail call void %280(ptr noundef nonnull align 8 dereferenceable(8) %277, ptr noundef nonnull %274)
  br label %281

281:                                              ; preds = %276, %271
  %282 = icmp sgt i32 %272, %225
  br i1 %282, label %283, label %293

283:                                              ; preds = %281
  %284 = load ptr, ptr %143, align 8, !tbaa !63
  %285 = sub i32 %272, %221
  %286 = sext i32 %285 to i64
  %287 = shl nsw i64 %286, 1
  %288 = load ptr, ptr %284, align 8, !tbaa !54
  %289 = getelementptr inbounds ptr, ptr %288, i64 2
  %290 = load ptr, ptr %289, align 8
  %291 = tail call noundef ptr %290(ptr noundef nonnull align 8 dereferenceable(8) %284, i64 noundef %287)
  store ptr %291, ptr %273, align 8, !tbaa !70
  %292 = load ptr, ptr %143, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %291, ptr noundef nonnull %1, i32 noundef %225, i32 noundef %272, ptr noundef %292)
  br label %294

293:                                              ; preds = %281
  store ptr null, ptr %273, align 8, !tbaa !70
  br label %294

294:                                              ; preds = %283, %293, %220
  ret void

295:                                              ; preds = %65, %81, %108, %121, %179, %191, %251, %263, %17
  %296 = phi { ptr, i32 } [ %18, %17 ], [ %252, %251 ], [ %264, %263 ], [ %180, %179 ], [ %192, %191 ], [ %66, %65 ], [ %82, %81 ], [ %109, %108 ], [ %122, %121 ]
  resume { ptr, i32 } %296
}

declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN11xercesc_2_79XMLString12patternMatchEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !87

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !88

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !89

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #19
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #18
  unreachable
}

declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiS2_PNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !53 {
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3)
  %6 = add i32 %1, 1
  %7 = icmp ult i32 %6, 65537
  %8 = and i1 %7, %5
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %9
  %12 = load i16, ptr %2, align 2, !tbaa !71
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %11, %36
  %15 = phi i16 [ %39, %36 ], [ %12, %11 ]
  %16 = phi ptr [ %38, %36 ], [ %2, %11 ]
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %15)
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %15)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i16, ptr %16, align 2, !tbaa !71
  %23 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE, i16 noundef zeroext %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i16, ptr %16, align 2, !tbaa !71
  %27 = icmp eq i16 %26, 37
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = getelementptr inbounds i16, ptr %16, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %30)
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds i16, ptr %16, i64 2
  %34 = load i16, ptr %33, align 2, !tbaa !71
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %34)
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %18, %21, %14
  %37 = phi i64 [ 1, %14 ], [ 1, %21 ], [ 1, %18 ], [ 3, %32 ]
  %38 = getelementptr inbounds i16, ptr %16, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !71
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %14, !llvm.loop !90

41:                                               ; preds = %36, %25, %28, %32, %11, %9, %4
  %42 = phi i1 [ false, %4 ], [ true, %9 ], [ %13, %11 ], [ false, %32 ], [ false, %28 ], [ false, %25 ], [ %40, %36 ]
  ret i1 %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri20setRegBasedAuthorityEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %8, %4
  store ptr null, ptr %5, align 8, !tbaa !67
  br label %78

15:                                               ; preds = %2
  %16 = load i16, ptr %1, align 2, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKt(ptr noundef nonnull %1)
  br i1 %19, label %27, label %20

20:                                               ; preds = %18, %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 1237, i32 noundef 271, ptr noundef nonnull @_ZN11xercesc_2_7L14errMsg_REGNAMEE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %21) #16
  resume { ptr, i32 } %26

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %29)
  br label %37

37:                                               ; preds = %31, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = load i16, ptr %1, align 2, !tbaa !71
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %44, %42 ], [ %1, %37 ]
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !71
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %42, !llvm.loop !73

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i64
  %49 = ptrtoint ptr %1 to i64
  %50 = sub i64 %48, %49
  %51 = add i64 %50, 2
  %52 = and i64 %51, 8589934590
  br label %53

53:                                               ; preds = %47, %37
  %54 = phi i64 [ %52, %47 ], [ 2, %37 ]
  %55 = load ptr, ptr %39, align 8, !tbaa !54
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %54)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %58, ptr nonnull align 2 %1, i64 %54, i1 false)
  store ptr %58, ptr %28, align 8, !tbaa !67
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !66
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %38, align 8, !tbaa !63
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull %60)
  br label %67

67:                                               ; preds = %62, %53
  store ptr null, ptr %59, align 8, !tbaa !66
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %38, align 8, !tbaa !63
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull %69)
  br label %76

76:                                               ; preds = %67, %71
  store ptr null, ptr %68, align 8, !tbaa !65
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %77, align 8, !tbaa !57
  br label %78

78:                                               ; preds = %76, %14
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri9setSchemeEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 1099, i32 noundef 270, ptr noundef nonnull @_ZN11xercesc_2_7L13errMsg_SCHEMEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %52

11:                                               ; preds = %2
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKt(ptr noundef nonnull %1)
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 1108, i32 noundef 271, ptr noundef nonnull @_ZN11xercesc_2_7L13errMsg_SCHEMEE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %52

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %22)
  br label %30

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = load i16, ptr %1, align 2, !tbaa !71
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %37, %35 ], [ %1, %30 ]
  %37 = getelementptr inbounds i16, ptr %36, i64 1
  %38 = load i16, ptr %37, align 2, !tbaa !71
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %35, !llvm.loop !73

40:                                               ; preds = %35
  %41 = ptrtoint ptr %37 to i64
  %42 = ptrtoint ptr %1 to i64
  %43 = sub i64 %41, %42
  %44 = add i64 %43, 2
  %45 = and i64 %44, 8589934590
  br label %46

46:                                               ; preds = %40, %30
  %47 = phi i64 [ %45, %40 ], [ 2, %30 ]
  %48 = load ptr, ptr %32, align 8, !tbaa !54
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %47)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %51, ptr nonnull align 2 %1, i64 %47, i1 false)
  store ptr %51, ptr %21, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef %51)
  ret void

52:                                               ; preds = %18, %9
  %53 = phi ptr [ %14, %18 ], [ %5, %9 ]
  %54 = phi { ptr, i32 } [ %19, %18 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %53) #16
  resume { ptr, i32 } %54
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKt(ptr noundef readonly %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !71
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext %4)
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds i16, ptr %0, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !71
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6, %18
  %11 = phi i16 [ %20, %18 ], [ %8, %6 ]
  %12 = phi ptr [ %19, %18 ], [ %7, %6 ]
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %11)
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i16, ptr %12, align 2, !tbaa !71
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE, i16 noundef zeroext %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds i16, ptr %12, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !71
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %10, !llvm.loop !91

22:                                               ; preds = %14, %18, %6, %3, %1
  %23 = phi i1 [ false, %1 ], [ false, %3 ], [ true, %6 ], [ true, %18 ], [ false, %14 ]
  ret i1 %23
}

declare void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri11setUserInfoEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp ne ptr %1, null
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 273, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_USERINFOE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_76XMLUri20isConformantUserInfoEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %17)
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !63
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull %19)
  br label %26

26:                                               ; preds = %21, %15
  br i1 %3, label %27, label %47

27:                                               ; preds = %26
  %28 = load i16, ptr %1, align 2, !tbaa !71
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8, !tbaa !63
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %1, %30 ], [ %34, %32 ]
  %34 = getelementptr inbounds i16, ptr %33, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !71
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %32, !llvm.loop !73

37:                                               ; preds = %32
  %38 = ptrtoint ptr %34 to i64
  %39 = ptrtoint ptr %1 to i64
  %40 = sub i64 %38, %39
  %41 = add i64 %40, 2
  %42 = and i64 %41, 8589934590
  %43 = load ptr, ptr %31, align 8, !tbaa !54
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %42)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %46, ptr nonnull align 2 %1, i64 %42, i1 false)
  br label %47

47:                                               ; preds = %26, %27, %37
  %48 = phi ptr [ %46, %37 ], [ null, %27 ], [ null, %26 ]
  store ptr %48, ptr %18, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri20isConformantUserInfoEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca [65 x i16], align 16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !71
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %5, %47
  %9 = phi i16 [ %50, %47 ], [ %6, %5 ]
  %10 = phi ptr [ %49, %47 ], [ %0, %5 ]
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %9)
  br i1 %11, label %47, label %12

12:                                               ; preds = %8
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %9)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i16, ptr %10, align 2, !tbaa !71
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE, i16 noundef zeroext %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i16, ptr %10, align 2, !tbaa !71
  %21 = icmp eq i16 %20, 37
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = getelementptr inbounds i16, ptr %10, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !71
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %24)
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds i16, ptr %10, i64 2
  %28 = load i16, ptr %27, align 2, !tbaa !71
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %28)
  br i1 %29, label %47, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds i16, ptr %10, i64 1
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #16
  store i16 37, ptr %3, align 16, !tbaa !71
  %32 = load i16, ptr %31, align 2, !tbaa !71
  %33 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 1
  store i16 %32, ptr %33, align 2, !tbaa !71
  %34 = getelementptr inbounds i16, ptr %10, i64 2
  %35 = load i16, ptr %34, align 2, !tbaa !71
  %36 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 2
  store i16 %35, ptr %36, align 4, !tbaa !71
  %37 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 3
  store i16 0, ptr %37, align 2, !tbaa !71
  %38 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull @.str, i32 noundef 1429, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_USERINFOE, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %39 unwind label %40

39:                                               ; preds = %30
  call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

40:                                               ; preds = %30
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %38) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #16
  br label %52

42:                                               ; preds = %19
  %43 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull @.str, i32 noundef 1438, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_USERINFOE, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %44 unwind label %45

44:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #16
  br label %52

47:                                               ; preds = %26, %12, %15, %8
  %48 = phi i64 [ 1, %8 ], [ 1, %15 ], [ 1, %12 ], [ 3, %26 ]
  %49 = getelementptr inbounds i16, ptr %10, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !71
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %54, label %8, !llvm.loop !92

52:                                               ; preds = %45, %40
  %53 = phi { ptr, i32 } [ %41, %40 ], [ %46, %45 ]
  resume { ptr, i32 } %53

54:                                               ; preds = %47, %5, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7setPortEi(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = icmp ult i32 %1, 65536
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %3, i32 noundef 64, i32 noundef 10, ptr noundef %12)
  %13 = call ptr @__cxa_allocate_exception(i64 48) #16
  %14 = load ptr, ptr %11, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 1203, i32 noundef 273, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PORTE, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %13) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #16
  br label %30

18:                                               ; preds = %2
  %19 = icmp eq i32 %1, -1
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %22)
  %23 = call ptr @__cxa_allocate_exception(i64 48) #16
  %24 = load ptr, ptr %21, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 1213, i32 noundef 276, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %20
  call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %23) #16
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #16
  br label %30

28:                                               ; preds = %18, %6
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %1, ptr %29, align 8, !tbaa !57
  ret void

30:                                               ; preds = %26, %16
  %31 = phi { ptr, i32 } [ %17, %16 ], [ %27, %26 ]
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %123, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2, !tbaa !71
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %123, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %0, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !71
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !llvm.loop !73

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  switch i16 %5, label %20 [
    i16 91, label %18
    i16 46, label %123
    i16 45, label %123
  ]

18:                                               ; preds = %12
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti(ptr noundef nonnull %0, i32 noundef %17)
  br label %123

20:                                               ; preds = %12
  %21 = shl i64 %15, 31
  %22 = ashr i64 %21, 32
  %23 = getelementptr i16, ptr %0, i64 %22
  %24 = getelementptr i16, ptr %23, i64 -1
  %25 = load i16, ptr %24, align 2, !tbaa !71
  %26 = icmp eq i16 %25, 45
  br i1 %26, label %123, label %27

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %29, %27 ], [ %0, %20 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !73

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = sub i64 %33, %14
  %35 = lshr exact i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 46, ptr noundef nonnull %0, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %38, %17
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = shl nsw i64 %22, 1
  %42 = load ptr, ptr %1, align 8, !tbaa !54
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %41)
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %45, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %37, ptr noundef nonnull %1)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load i16, ptr %45, align 2, !tbaa !71
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %52, %50 ], [ %45, %47 ]
  %52 = getelementptr inbounds i16, ptr %51, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !71
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %50, !llvm.loop !73

55:                                               ; preds = %50
  %56 = ptrtoint ptr %52 to i64
  %57 = ptrtoint ptr %45 to i64
  %58 = sub i64 %56, %57
  %59 = lshr exact i64 %58, 1
  %60 = trunc i64 %59 to i32
  br label %61

61:                                               ; preds = %40, %47, %55
  %62 = phi i32 [ %60, %55 ], [ 0, %47 ], [ 0, %40 ]
  %63 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 46, ptr noundef %45, i32 noundef %62)
  %64 = load ptr, ptr %1, align 8, !tbaa !54
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %45)
  %67 = sext i32 %63 to i64
  %68 = getelementptr i16, ptr %0, i64 %67
  %69 = getelementptr i16, ptr %68, i64 1
  %70 = load i16, ptr %69, align 2, !tbaa !71
  %71 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %70)
  br i1 %71, label %123, label %72

72:                                               ; preds = %61, %32
  %73 = phi i32 [ %63, %61 ], [ %37, %32 ]
  %74 = sext i32 %73 to i64
  %75 = getelementptr i16, ptr %0, i64 %74
  %76 = getelementptr i16, ptr %75, i64 1
  %77 = load i16, ptr %76, align 2, !tbaa !71
  %78 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %77)
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %0, i32 noundef %17)
  br label %123

81:                                               ; preds = %72
  %82 = icmp sgt i32 %17, 255
  br i1 %82, label %123, label %83

83:                                               ; preds = %81
  %84 = icmp slt i32 %17, 1
  br i1 %84, label %123, label %85

85:                                               ; preds = %83
  %86 = and i64 %16, 4294967295
  %87 = and i64 %16, 4294967295
  br label %88

88:                                               ; preds = %85, %119
  %89 = phi i64 [ 0, %85 ], [ %121, %119 ]
  %90 = phi i1 [ %84, %85 ], [ %122, %119 ]
  %91 = phi i32 [ 0, %85 ], [ %120, %119 ]
  %92 = getelementptr inbounds i16, ptr %0, i64 %89
  %93 = load i16, ptr %92, align 2, !tbaa !71
  %94 = icmp eq i16 %93, 46
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = icmp eq i64 %89, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %95
  %98 = getelementptr i16, ptr %92, i64 -1
  %99 = load i16, ptr %98, align 2, !tbaa !71
  %100 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %99)
  br i1 %100, label %101, label %123

101:                                              ; preds = %97, %95
  %102 = add nuw nsw i64 %89, 1
  %103 = icmp ult i64 %102, %86
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = getelementptr inbounds i16, ptr %0, i64 %102
  %106 = load i16, ptr %105, align 2, !tbaa !71
  %107 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %106)
  br i1 %107, label %119, label %123

108:                                              ; preds = %88
  %109 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %93)
  br i1 %109, label %116, label %110

110:                                              ; preds = %108
  %111 = load i16, ptr %92, align 2, !tbaa !71
  %112 = icmp ne i16 %111, 45
  %113 = add i32 %91, 1
  %114 = icmp ugt i32 %113, 63
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %123, label %119

116:                                              ; preds = %108
  %117 = add i32 %91, 1
  %118 = icmp ugt i32 %117, 63
  br i1 %118, label %123, label %119

119:                                              ; preds = %110, %101, %104, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %104 ], [ 0, %101 ], [ %113, %110 ]
  %121 = add nuw nsw i64 %89, 1
  %122 = icmp uge i64 %121, %87
  br i1 %122, label %123, label %88, !llvm.loop !93

123:                                              ; preds = %116, %110, %104, %97, %119, %83, %12, %18, %12, %20, %81, %61, %79, %2, %4
  %124 = phi i1 [ false, %4 ], [ false, %2 ], [ %19, %18 ], [ false, %12 ], [ false, %20 ], [ %80, %79 ], [ false, %61 ], [ false, %81 ], [ false, %12 ], [ %84, %83 ], [ %122, %119 ], [ %90, %97 ], [ %90, %104 ], [ %90, %110 ], [ %90, %116 ]
  ret i1 %124
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKt(ptr noundef readonly %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !71
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %3, %28
  %7 = phi i16 [ %31, %28 ], [ %4, %3 ]
  %8 = phi ptr [ %30, %28 ], [ %0, %3 ]
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %7)
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %7)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i16, ptr %8, align 2, !tbaa !71
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19REG_NAME_CHARACTERSE, i16 noundef zeroext %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i16, ptr %8, align 2, !tbaa !71
  %19 = icmp eq i16 %18, 37
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = getelementptr inbounds i16, ptr %8, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !71
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %22)
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = getelementptr inbounds i16, ptr %8, i64 2
  %26 = load i16, ptr %25, align 2, !tbaa !71
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %26)
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %10, %13, %6
  %29 = phi i64 [ 1, %6 ], [ 1, %13 ], [ 1, %10 ], [ 3, %24 ]
  %30 = getelementptr inbounds i16, ptr %8, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !71
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %6, !llvm.loop !94

33:                                               ; preds = %28, %17, %20, %24, %3, %1
  %34 = phi i1 [ false, %1 ], [ %5, %3 ], [ false, %24 ], [ false, %20 ], [ false, %17 ], [ %32, %28 ]
  ret i1 %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7setPathEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %35

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %8, %4
  store ptr null, ptr %5, align 8, !tbaa !68
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %16)
  br label %24

24:                                               ; preds = %14, %18
  store ptr null, ptr %15, align 8, !tbaa !69
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %26)
  br label %34

34:                                               ; preds = %24, %28
  store ptr null, ptr %25, align 8, !tbaa !70
  br label %36

35:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_76XMLUri14initializePathEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1)
  br label %36

36:                                               ; preds = %35, %34
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri14setQueryStringEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %8, %4
  store ptr null, ptr %5, align 8, !tbaa !69
  br label %78

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1332, i32 noundef 267, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %79

26:                                               ; preds = %15
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str, i32 noundef 1340, i32 noundef 274, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %79

37:                                               ; preds = %26
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %1)
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull @.str, i32 noundef 1348, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %42)
          to label %43 unwind label %44

43:                                               ; preds = %39
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %79

46:                                               ; preds = %37
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !69
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull %48)
  br label %56

56:                                               ; preds = %50, %46
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  %59 = load i16, ptr %1, align 2, !tbaa !71
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56, %61
  %62 = phi ptr [ %63, %61 ], [ %1, %56 ]
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !71
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %61, !llvm.loop !73

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i64
  %68 = ptrtoint ptr %1 to i64
  %69 = sub i64 %67, %68
  %70 = add i64 %69, 2
  %71 = and i64 %70, 8589934590
  br label %72

72:                                               ; preds = %66, %56
  %73 = phi i64 [ %71, %66 ], [ 2, %56 ]
  %74 = load ptr, ptr %58, align 8, !tbaa !54
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %58, i64 noundef %73)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %77, ptr nonnull align 2 %1, i64 %73, i1 false)
  store ptr %77, ptr %47, align 8, !tbaa !69
  br label %78

78:                                               ; preds = %72, %14
  ret void

79:                                               ; preds = %44, %35, %24
  %80 = phi ptr [ %40, %44 ], [ %31, %35 ], [ %20, %24 ]
  %81 = phi { ptr, i32 } [ %45, %44 ], [ %36, %35 ], [ %25, %24 ]
  tail call void @__cxa_free_exception(ptr %80) #16
  resume { ptr, i32 } %81
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri11setFragmentEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %6)
  br label %14

14:                                               ; preds = %8, %4
  store ptr null, ptr %5, align 8, !tbaa !70
  br label %78

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1286, i32 noundef 267, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %22)
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %79

26:                                               ; preds = %15
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str, i32 noundef 1294, i32 noundef 274, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %79

37:                                               ; preds = %26
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %1)
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull @.str, i32 noundef 1301, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %42)
          to label %43 unwind label %44

43:                                               ; preds = %39
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %79

46:                                               ; preds = %37
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !70
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull %48)
  br label %56

56:                                               ; preds = %50, %46
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  %59 = load i16, ptr %1, align 2, !tbaa !71
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56, %61
  %62 = phi ptr [ %63, %61 ], [ %1, %56 ]
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !71
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %61, !llvm.loop !73

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i64
  %68 = ptrtoint ptr %1 to i64
  %69 = sub i64 %67, %68
  %70 = add i64 %69, 2
  %71 = and i64 %70, 8589934590
  br label %72

72:                                               ; preds = %66, %56
  %73 = phi i64 [ %71, %66 ], [ 2, %56 ]
  %74 = load ptr, ptr %58, align 8, !tbaa !54
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %58, i64 noundef %73)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %77, ptr nonnull align 2 %1, i64 %73, i1 false)
  store ptr %77, ptr %47, align 8, !tbaa !70
  br label %78

78:                                               ; preds = %72, %14
  ret void

79:                                               ; preds = %44, %35, %24
  %80 = phi ptr [ %40, %44 ], [ %31, %35 ], [ %20, %24 ]
  %81 = phi { ptr, i32 } [ %45, %44 ], [ %36, %35 ], [ %25, %24 ]
  tail call void @__cxa_free_exception(ptr %80) #16
  resume { ptr, i32 } %81
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri12isGenericURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #8 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef readonly %0) local_unnamed_addr #0 align 2 !prof !95 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3, !prof !96

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !71
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %32, label %6, !prof !96

6:                                                ; preds = %3
  %7 = load i16, ptr %0, align 2, !tbaa !71
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %32, label %9, !prof !97

9:                                                ; preds = %6, %27
  %10 = phi i16 [ %30, %27 ], [ %7, %6 ]
  %11 = phi ptr [ %29, %27 ], [ %0, %6 ]
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %10)
  br i1 %12, label %27, label %13, !prof !98

13:                                               ; preds = %9
  %14 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE, i16 noundef zeroext %10)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %27, !prof !99

16:                                               ; preds = %13
  %17 = load i16, ptr %11, align 2, !tbaa !71
  %18 = icmp eq i16 %17, 37
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds i16, ptr %11, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !71
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %21)
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds i16, ptr %11, i64 2
  %25 = load i16, ptr %24, align 2, !tbaa !71
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %25)
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %13, %9
  %28 = phi i64 [ 1, %9 ], [ 1, %13 ], [ 3, %23 ]
  %29 = getelementptr inbounds i16, ptr %11, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %9, !prof !100, !llvm.loop !101

32:                                               ; preds = %27, %16, %19, %23, %6, %3, %1
  %33 = phi i1 [ false, %1 ], [ false, %3 ], [ %8, %6 ], [ false, %23 ], [ false, %19 ], [ false, %16 ], [ %31, %27 ]
  ret i1 %33
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #9 align 2 !prof !102 {
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti(ptr noundef %0, i32 noundef %1)
  %7 = add i32 %2, 1
  %8 = icmp ult i32 %7, 65537
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %40, !prof !103

10:                                               ; preds = %5
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %40, !prof !104

12:                                               ; preds = %10, %36
  %13 = phi i32 [ %38, %36 ], [ 0, %10 ]
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i16, ptr %3, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !71
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %16)
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %16)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i16, ptr %15, align 2, !tbaa !71
  %23 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE, i16 noundef zeroext %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i16, ptr %15, align 2, !tbaa !71
  %27 = icmp eq i16 %26, 37
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = getelementptr i16, ptr %15, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %30)
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr i16, ptr %15, i64 2
  %34 = load i16, ptr %33, align 2, !tbaa !71
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %34)
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %18, %21, %12
  %37 = phi i32 [ 1, %12 ], [ 1, %21 ], [ 1, %18 ], [ 3, %32 ]
  %38 = add nuw nsw i32 %13, %37
  %39 = icmp slt i32 %38, %4
  br i1 %39, label %12, label %40, !prof !104, !llvm.loop !105

40:                                               ; preds = %25, %28, %32, %36, %10, %5
  %41 = phi i1 [ false, %5 ], [ true, %10 ], [ true, %36 ], [ false, %32 ], [ false, %28 ], [ false, %25 ]
  ret i1 %41
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !102 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %78, label %4, !prof !106

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2, !tbaa !71
  switch i16 %5, label %8 [
    i16 91, label %6
    i16 46, label %78
    i16 45, label %78
  ], !prof !107

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti(ptr noundef nonnull %0, i32 noundef %1)
  br label %78

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = getelementptr i16, ptr %0, i64 %9
  %11 = getelementptr i16, ptr %10, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !71
  %13 = icmp eq i16 %12, 45
  br i1 %13, label %78, label %14, !prof !106

14:                                               ; preds = %8
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 46, ptr noundef nonnull %0, i32 noundef %1)
  %16 = add nsw i32 %15, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %25, !prof !106

18:                                               ; preds = %14
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 46, ptr noundef nonnull %0, i32 noundef %15)
  %20 = sext i32 %19 to i64
  %21 = getelementptr i16, ptr %0, i64 %20
  %22 = getelementptr i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !71
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %23)
  br i1 %24, label %78, label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ %19, %18 ], [ %15, %14 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr i16, ptr %0, i64 %27
  %29 = getelementptr i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %30)
  br i1 %31, label %32, label %34, !prof !106

32:                                               ; preds = %25
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %0, i32 noundef %1)
  br label %78

34:                                               ; preds = %25
  %35 = icmp sgt i32 %1, 255
  br i1 %35, label %78, label %36, !prof !106

36:                                               ; preds = %34
  %37 = icmp slt i32 %1, 1
  br i1 %37, label %78, label %38, !prof !108

38:                                               ; preds = %36
  %39 = zext nneg i32 %1 to i64
  %40 = zext nneg i32 %1 to i64
  %41 = zext nneg i32 %1 to i64
  br label %42

42:                                               ; preds = %38, %73
  %43 = phi i64 [ 0, %38 ], [ %75, %73 ]
  %44 = phi i1 [ %37, %38 ], [ %76, %73 ]
  %45 = phi i32 [ 0, %38 ], [ %74, %73 ]
  %46 = getelementptr inbounds i16, ptr %0, i64 %43
  %47 = load i16, ptr %46, align 2, !tbaa !71
  %48 = icmp eq i16 %47, 46
  br i1 %48, label %49, label %62, !prof !109

49:                                               ; preds = %42
  %50 = icmp eq i64 %43, 0
  br i1 %50, label %55, label %51, !prof !110

51:                                               ; preds = %49
  %52 = getelementptr i16, ptr %46, i64 -1
  %53 = load i16, ptr %52, align 2, !tbaa !71
  %54 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %53)
  br i1 %54, label %55, label %78, !prof !111

55:                                               ; preds = %51, %49
  %56 = add nuw nsw i64 %43, 1
  %57 = icmp ult i64 %56, %39
  br i1 %57, label %58, label %73, !prof !111

58:                                               ; preds = %55
  %59 = getelementptr inbounds i16, ptr %0, i64 %56
  %60 = load i16, ptr %59, align 2, !tbaa !71
  %61 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %60)
  br i1 %61, label %73, label %78, !prof !111

62:                                               ; preds = %42
  %63 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %47)
  br i1 %63, label %70, label %64, !prof !112

64:                                               ; preds = %62
  %65 = load i16, ptr %46, align 2, !tbaa !71
  %66 = icmp ne i16 %65, 45
  %67 = add i32 %45, 1
  %68 = icmp ugt i32 %67, 63
  %69 = select i1 %66, i1 true, i1 %68, !prof !113
  br i1 %69, label %78, label %73, !prof !113

70:                                               ; preds = %62
  %71 = add i32 %45, 1
  %72 = icmp ugt i32 %71, 63
  br i1 %72, label %78, label %73, !prof !114

73:                                               ; preds = %64, %55, %58, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %58 ], [ 0, %55 ], [ %67, %64 ]
  %75 = add nuw nsw i64 %43, 1
  %76 = icmp uge i64 %75, %40
  %77 = icmp eq i64 %75, %41
  br i1 %77, label %78, label %42, !prof !115, !llvm.loop !116

78:                                               ; preds = %70, %64, %58, %51, %73, %36, %4, %32, %18, %34, %8, %4, %2, %6
  %79 = phi i1 [ %7, %6 ], [ false, %2 ], [ false, %4 ], [ false, %8 ], [ %33, %32 ], [ false, %18 ], [ false, %34 ], [ false, %4 ], [ %37, %36 ], [ %76, %73 ], [ %44, %51 ], [ %44, %58 ], [ %44, %64 ], [ %44, %70 ]
  ret i1 %79
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %33, label %4

4:                                                ; preds = %2, %29
  %5 = phi i1 [ %32, %29 ], [ %3, %2 ]
  %6 = phi i32 [ %31, %29 ], [ 0, %2 ]
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds i16, ptr %0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !71
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %9)
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %9)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i16, ptr %8, align 2, !tbaa !71
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19REG_NAME_CHARACTERSE, i16 noundef zeroext %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i16, ptr %8, align 2, !tbaa !71
  %20 = icmp eq i16 %19, 37
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = getelementptr i16, ptr %8, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !71
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %23)
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr i16, ptr %8, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !71
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %27)
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %11, %14, %4
  %30 = phi i32 [ 1, %4 ], [ 1, %14 ], [ 1, %11 ], [ 3, %25 ]
  %31 = add nuw nsw i32 %6, %30
  %32 = icmp sge i32 %31, %1
  br i1 %32, label %33, label %4, !llvm.loop !117

33:                                               ; preds = %25, %21, %18, %29, %2
  %34 = phi i1 [ %3, %2 ], [ %5, %25 ], [ %5, %21 ], [ %5, %18 ], [ %32, %29 ]
  ret i1 %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = alloca i32, align 4
  %4 = add nsw i32 %1, -1
  %5 = icmp sgt i32 %1, 2
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !71
  %8 = icmp eq i16 %7, 91
  br i1 %8, label %9, label %65

9:                                                ; preds = %6
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds i16, ptr %0, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !71
  %13 = icmp eq i16 %12, 93
  br i1 %13, label %14, label %65

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !tbaa !118
  %15 = call noundef i32 @_ZN11xercesc_2_76XMLUri15scanHexSequenceEPKtiiRi(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %63, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, %4
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load i32, ptr %3, align 4, !tbaa !118
  %21 = icmp eq i32 %20, 8
  br label %63

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp slt i32 %23, %4
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds i16, ptr %0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !71
  %29 = icmp eq i16 %28, 58
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds i16, ptr %0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !71
  %34 = icmp eq i16 %33, 58
  %35 = load i32, ptr %3, align 4, !tbaa !118
  br i1 %34, label %36, label %42

36:                                               ; preds = %30
  %37 = add nsw i32 %35, 1
  store i32 %37, ptr %3, align 4, !tbaa !118
  %38 = icmp sgt i32 %35, 7
  br i1 %38, label %63, label %39

39:                                               ; preds = %36
  %40 = add nsw i32 %15, 2
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %63, label %49

42:                                               ; preds = %30
  %43 = icmp eq i32 %35, 6
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %27, i64 1
  %46 = xor i32 %15, -1
  %47 = add i32 %4, %46
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %45, i32 noundef %47)
  br label %63

49:                                               ; preds = %39
  %50 = call noundef i32 @_ZN11xercesc_2_76XMLUri15scanHexSequenceEPKtiiRi(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, %4
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %3, align 4, !tbaa !118
  %56 = icmp sgt i32 %55, %37
  %57 = zext i1 %56 to i32
  %58 = add nuw nsw i32 %50, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %0, i64 %59
  %61 = sub nsw i32 %4, %58
  %62 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %60, i32 noundef %61)
  br label %63

63:                                               ; preds = %54, %49, %52, %22, %25, %42, %39, %36, %14, %44, %19
  %64 = phi i1 [ %21, %19 ], [ %48, %44 ], [ false, %14 ], [ false, %36 ], [ true, %39 ], [ false, %42 ], [ false, %25 ], [ false, %22 ], [ %62, %54 ], [ false, %49 ], [ true, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %65

65:                                               ; preds = %2, %6, %9, %63
  %66 = phi i1 [ %64, %63 ], [ false, %9 ], [ false, %6 ], [ false, %2 ]
  ret i1 %66
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = zext nneg i32 %1 to i64
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %4, %50
  %9 = phi i64 [ 0, %4 ], [ %53, %50 ]
  %10 = phi i1 [ %3, %4 ], [ %54, %50 ]
  %11 = phi i32 [ 0, %4 ], [ %52, %50 ]
  %12 = phi i32 [ 0, %4 ], [ %51, %50 ]
  %13 = getelementptr inbounds i16, ptr %0, i64 %9
  %14 = load i16, ptr %13, align 2, !tbaa !71
  %15 = icmp eq i16 %14, 46
  br i1 %15, label %16, label %28

16:                                               ; preds = %8
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %16
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %5
  br i1 %20, label %56, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, ptr %0, i64 %19
  %23 = load i16, ptr %22, align 2, !tbaa !71
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %23)
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = add nsw i32 %11, 1
  %27 = icmp sgt i32 %11, 2
  br i1 %27, label %56, label %50

28:                                               ; preds = %8
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %14)
  %30 = icmp slt i32 %12, 3
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = add nsw i32 %12, 1
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = getelementptr i16, ptr %13, i64 -2
  %37 = load i16, ptr %36, align 2, !tbaa !71
  %38 = getelementptr i16, ptr %13, i64 -1
  %39 = load i16, ptr %38, align 2, !tbaa !71
  %40 = load i16, ptr %13, align 2, !tbaa !71
  %41 = icmp ult i16 %37, 50
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = icmp eq i16 %37, 50
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = icmp ult i16 %39, 53
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = icmp eq i16 %39, 53
  %48 = icmp ult i16 %40, 54
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %35, %44, %46, %25, %32
  %51 = phi i32 [ 0, %25 ], [ %33, %32 ], [ 3, %46 ], [ 3, %44 ], [ 3, %35 ]
  %52 = phi i32 [ %26, %25 ], [ %11, %32 ], [ %11, %46 ], [ %11, %44 ], [ %11, %35 ]
  %53 = add nuw nsw i64 %9, 1
  %54 = icmp uge i64 %53, %6
  %55 = icmp eq i64 %53, %7
  br i1 %55, label %56, label %8, !llvm.loop !119

56:                                               ; preds = %46, %42, %28, %25, %16, %18, %21, %50
  %57 = phi i1 [ %54, %50 ], [ %10, %21 ], [ %10, %18 ], [ %10, %16 ], [ %10, %25 ], [ %10, %28 ], [ %10, %42 ], [ %10, %46 ]
  %58 = phi i32 [ %52, %50 ], [ %11, %21 ], [ %11, %18 ], [ %11, %16 ], [ %26, %25 ], [ %11, %28 ], [ %11, %42 ], [ %11, %46 ]
  %59 = icmp eq i32 %58, 3
  %60 = select i1 %57, i1 %59, i1 false
  br label %61

61:                                               ; preds = %56, %2
  %62 = phi i1 [ false, %2 ], [ %60, %56 ]
  ret i1 %62
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76XMLUri15scanHexSequenceEPKtiiRi(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 !prof !53 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %64

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = sext i32 %2 to i64
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %6, %49
  %11 = phi i64 [ %7, %6 ], [ %51, %49 ]
  %12 = phi i32 [ 0, %6 ], [ %50, %49 ]
  %13 = getelementptr inbounds i16, ptr %0, i64 %11
  %14 = load i16, ptr %13, align 2, !tbaa !71
  %15 = icmp eq i16 %14, 58
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = icmp sgt i32 %12, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load i32, ptr %3, align 4, !tbaa !118
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !118
  %21 = icmp sgt i32 %19, 7
  br i1 %21, label %64, label %22

22:                                               ; preds = %18, %16
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %22
  %25 = add nsw i64 %11, 1
  %26 = icmp slt i64 %25, %8
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = getelementptr inbounds i16, ptr %0, i64 %25
  %29 = load i16, ptr %28, align 2, !tbaa !71
  %30 = icmp eq i16 %29, 58
  br i1 %30, label %62, label %49

31:                                               ; preds = %10
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %14)
  br i1 %32, label %46, label %33

33:                                               ; preds = %31
  %34 = icmp eq i16 %14, 46
  %35 = add i32 %12, -1
  %36 = icmp ult i32 %35, 3
  %37 = and i1 %36, %34
  %38 = load i32, ptr %3, align 4
  %39 = icmp slt i32 %38, 7
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %64

41:                                               ; preds = %33
  %42 = trunc i64 %11 to i32
  %43 = xor i32 %12, -1
  %44 = add i32 %42, %43
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 %1)
  br label %64

46:                                               ; preds = %31
  %47 = add nsw i32 %12, 1
  %48 = icmp sgt i32 %12, 3
  br i1 %48, label %64, label %49

49:                                               ; preds = %24, %27, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %27 ], [ 0, %24 ]
  %51 = add nsw i64 %11, 1
  %52 = icmp eq i64 %51, %9
  br i1 %52, label %53, label %10, !llvm.loop !120

53:                                               ; preds = %49
  %54 = icmp sgt i32 %50, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %53
  %56 = load i32, ptr %3, align 4, !tbaa !118
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %3, align 4, !tbaa !118
  %58 = icmp slt i32 %56, 8
  %59 = select i1 %58, i32 %2, i32 -1
  br label %64

60:                                               ; preds = %22
  %61 = trunc i64 %11 to i32
  br label %64

62:                                               ; preds = %27
  %63 = trunc i64 %11 to i32
  br label %64

64:                                               ; preds = %60, %62, %46, %18, %4, %53, %55, %33, %41
  %65 = phi i32 [ %45, %41 ], [ -1, %33 ], [ -1, %53 ], [ %59, %55 ], [ -1, %4 ], [ %61, %60 ], [ %63, %62 ], [ -1, %46 ], [ -1, %18 ]
  ret i32 %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = alloca [17 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %4, align 2, !tbaa !71
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %4, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !71
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !73

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %4 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  br label %19

19:                                               ; preds = %1, %6, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %6 ], [ 0, %1 ]
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load i16, ptr %22, align 2, !tbaa !71
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %22, %24 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !73

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %22 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  br label %37

37:                                               ; preds = %19, %24, %32
  %38 = phi i64 [ %36, %32 ], [ 0, %24 ], [ 0, %19 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = select i1 %41, ptr %43, ptr %40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %37
  %47 = load i16, ptr %44, align 2, !tbaa !71
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46, %49
  %50 = phi ptr [ %51, %49 ], [ %44, %46 ]
  %51 = getelementptr inbounds i16, ptr %50, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !71
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %49, !llvm.loop !73

54:                                               ; preds = %49
  %55 = ptrtoint ptr %51 to i64
  %56 = ptrtoint ptr %44 to i64
  %57 = sub i64 %55, %56
  %58 = lshr exact i64 %57, 1
  br label %59

59:                                               ; preds = %37, %46, %54
  %60 = phi i64 [ %58, %54 ], [ 0, %46 ], [ 0, %37 ]
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load i16, ptr %62, align 2, !tbaa !71
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64, %67
  %68 = phi ptr [ %69, %67 ], [ %62, %64 ]
  %69 = getelementptr inbounds i16, ptr %68, i64 1
  %70 = load i16, ptr %69, align 2, !tbaa !71
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %67, !llvm.loop !73

72:                                               ; preds = %67
  %73 = ptrtoint ptr %69 to i64
  %74 = ptrtoint ptr %62 to i64
  %75 = sub i64 %73, %74
  %76 = lshr exact i64 %75, 1
  br label %77

77:                                               ; preds = %59, %64, %72
  %78 = phi i64 [ %76, %72 ], [ 0, %64 ], [ 0, %59 ]
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !69
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %77
  %83 = load i16, ptr %80, align 2, !tbaa !71
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82, %85
  %86 = phi ptr [ %87, %85 ], [ %80, %82 ]
  %87 = getelementptr inbounds i16, ptr %86, i64 1
  %88 = load i16, ptr %87, align 2, !tbaa !71
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %85, !llvm.loop !73

90:                                               ; preds = %85
  %91 = ptrtoint ptr %87 to i64
  %92 = ptrtoint ptr %80 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 1
  br label %95

95:                                               ; preds = %77, %82, %90
  %96 = phi i64 [ %94, %90 ], [ 0, %82 ], [ 0, %77 ]
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !65
  %99 = icmp eq ptr %98, null
  br i1 %99, label %113, label %100

100:                                              ; preds = %95
  %101 = load i16, ptr %98, align 2, !tbaa !71
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %100, %103
  %104 = phi ptr [ %105, %103 ], [ %98, %100 ]
  %105 = getelementptr inbounds i16, ptr %104, i64 1
  %106 = load i16, ptr %105, align 2, !tbaa !71
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %103, !llvm.loop !73

108:                                              ; preds = %103
  %109 = ptrtoint ptr %105 to i64
  %110 = ptrtoint ptr %98 to i64
  %111 = sub i64 %109, %110
  %112 = lshr exact i64 %111, 1
  br label %113

113:                                              ; preds = %95, %100, %108
  %114 = phi i64 [ %112, %108 ], [ 0, %100 ], [ 0, %95 ]
  %115 = add nuw i64 %20, 5
  %116 = add i64 %115, %38
  %117 = add i64 %116, %60
  %118 = add i64 %117, %78
  %119 = add i64 %118, %96
  %120 = add i64 %119, %114
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %122 = load ptr, ptr %121, align 8, !tbaa !63
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !121
  %125 = load ptr, ptr %122, align 8, !tbaa !54
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(8) %122, ptr noundef %124)
  %128 = load ptr, ptr %121, align 8, !tbaa !63
  %129 = shl i64 %120, 1
  %130 = add i64 %129, 66
  %131 = and i64 %130, 8589934590
  %132 = load ptr, ptr %128, align 8, !tbaa !54
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(8) %128, i64 noundef %131)
  store ptr %135, ptr %123, align 8, !tbaa !121
  store i16 0, ptr %135, align 2, !tbaa !71
  %136 = load ptr, ptr %3, align 8, !tbaa !64
  %137 = icmp eq ptr %136, null
  br i1 %137, label %159, label %138

138:                                              ; preds = %113
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %135, ptr noundef nonnull %136)
  %139 = load ptr, ptr %123, align 8, !tbaa !121
  %140 = icmp eq ptr %139, null
  br i1 %140, label %154, label %141

141:                                              ; preds = %138
  %142 = load i16, ptr %139, align 2, !tbaa !71
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141, %144
  %145 = phi ptr [ %146, %144 ], [ %139, %141 ]
  %146 = getelementptr inbounds i16, ptr %145, i64 1
  %147 = load i16, ptr %146, align 2, !tbaa !71
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %144, !llvm.loop !73

149:                                              ; preds = %144
  %150 = ptrtoint ptr %146 to i64
  %151 = ptrtoint ptr %139 to i64
  %152 = sub i64 %150, %151
  %153 = lshr exact i64 %152, 1
  br label %154

154:                                              ; preds = %138, %141, %149
  %155 = phi i64 [ %153, %149 ], [ 0, %141 ], [ 0, %138 ]
  %156 = and i64 %155, 4294967295
  %157 = getelementptr inbounds i16, ptr %135, i64 %156
  %158 = getelementptr inbounds i16, ptr %157, i64 1
  store i16 58, ptr %157, align 2, !tbaa !71
  br label %159

159:                                              ; preds = %154, %113
  %160 = phi ptr [ %158, %154 ], [ %135, %113 ]
  %161 = load ptr, ptr %39, align 8, !tbaa !66
  %162 = icmp eq ptr %161, null
  %163 = load ptr, ptr %42, align 8
  %164 = icmp eq ptr %163, null
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %257, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds i16, ptr %160, i64 1
  store i16 47, ptr %160, align 2, !tbaa !71
  %168 = getelementptr inbounds i16, ptr %160, i64 2
  store i16 47, ptr %167, align 2, !tbaa !71
  br i1 %162, label %237, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %97, align 8, !tbaa !65
  %171 = icmp eq ptr %170, null
  br i1 %171, label %193, label %172

172:                                              ; preds = %169
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %168, ptr noundef nonnull %170)
  %173 = load ptr, ptr %97, align 8, !tbaa !65
  %174 = icmp eq ptr %173, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %172
  %176 = load i16, ptr %173, align 2, !tbaa !71
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %180, %178 ], [ %173, %175 ]
  %180 = getelementptr inbounds i16, ptr %179, i64 1
  %181 = load i16, ptr %180, align 2, !tbaa !71
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %178, !llvm.loop !73

183:                                              ; preds = %178
  %184 = ptrtoint ptr %180 to i64
  %185 = ptrtoint ptr %173 to i64
  %186 = sub i64 %184, %185
  %187 = lshr exact i64 %186, 1
  %188 = and i64 %187, 4294967295
  br label %189

189:                                              ; preds = %172, %175, %183
  %190 = phi i64 [ %188, %183 ], [ 0, %175 ], [ 0, %172 ]
  %191 = getelementptr inbounds i16, ptr %168, i64 %190
  %192 = getelementptr inbounds i16, ptr %191, i64 1
  store i16 64, ptr %191, align 2, !tbaa !71
  br label %193

193:                                              ; preds = %189, %169
  %194 = phi ptr [ %192, %189 ], [ %168, %169 ]
  %195 = load ptr, ptr %39, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %194, ptr noundef %195)
  %196 = load ptr, ptr %39, align 8, !tbaa !66
  %197 = icmp eq ptr %196, null
  br i1 %197, label %212, label %198

198:                                              ; preds = %193
  %199 = load i16, ptr %196, align 2, !tbaa !71
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %198, %201
  %202 = phi ptr [ %203, %201 ], [ %196, %198 ]
  %203 = getelementptr inbounds i16, ptr %202, i64 1
  %204 = load i16, ptr %203, align 2, !tbaa !71
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %201, !llvm.loop !73

206:                                              ; preds = %201
  %207 = ptrtoint ptr %203 to i64
  %208 = ptrtoint ptr %196 to i64
  %209 = sub i64 %207, %208
  %210 = lshr exact i64 %209, 1
  %211 = and i64 %210, 4294967295
  br label %212

212:                                              ; preds = %193, %198, %206
  %213 = phi i64 [ %211, %206 ], [ 0, %198 ], [ 0, %193 ]
  %214 = getelementptr inbounds i16, ptr %194, i64 %213
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  %216 = load i32, ptr %215, align 8, !tbaa !57
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %257, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds i16, ptr %214, i64 1
  store i16 58, ptr %214, align 2, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #16
  %220 = load ptr, ptr %121, align 8, !tbaa !63
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %216, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %220)
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %219, ptr noundef nonnull %2)
  %221 = load i16, ptr %2, align 16, !tbaa !71
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %218, %223
  %224 = phi ptr [ %225, %223 ], [ %2, %218 ]
  %225 = getelementptr inbounds i16, ptr %224, i64 1
  %226 = load i16, ptr %225, align 2, !tbaa !71
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %223, !llvm.loop !73

228:                                              ; preds = %223
  %229 = ptrtoint ptr %225 to i64
  %230 = ptrtoint ptr %2 to i64
  %231 = sub i64 %229, %230
  %232 = lshr exact i64 %231, 1
  %233 = and i64 %232, 4294967295
  br label %234

234:                                              ; preds = %218, %228
  %235 = phi i64 [ %233, %228 ], [ 0, %218 ]
  %236 = getelementptr inbounds i16, ptr %219, i64 %235
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #16
  br label %257

237:                                              ; preds = %166
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %168, ptr noundef %163)
  %238 = load ptr, ptr %42, align 8, !tbaa !67
  %239 = icmp eq ptr %238, null
  br i1 %239, label %254, label %240

240:                                              ; preds = %237
  %241 = load i16, ptr %238, align 2, !tbaa !71
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %240, %243
  %244 = phi ptr [ %245, %243 ], [ %238, %240 ]
  %245 = getelementptr inbounds i16, ptr %244, i64 1
  %246 = load i16, ptr %245, align 2, !tbaa !71
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %243, !llvm.loop !73

248:                                              ; preds = %243
  %249 = ptrtoint ptr %245 to i64
  %250 = ptrtoint ptr %238 to i64
  %251 = sub i64 %249, %250
  %252 = lshr exact i64 %251, 1
  %253 = and i64 %252, 4294967295
  br label %254

254:                                              ; preds = %237, %240, %248
  %255 = phi i64 [ %253, %248 ], [ 0, %240 ], [ 0, %237 ]
  %256 = getelementptr inbounds i16, ptr %168, i64 %255
  br label %257

257:                                              ; preds = %159, %254, %234, %212
  %258 = phi ptr [ %236, %234 ], [ %214, %212 ], [ %256, %254 ], [ %160, %159 ]
  %259 = load ptr, ptr %61, align 8, !tbaa !68
  %260 = icmp eq ptr %259, null
  br i1 %260, label %281, label %261

261:                                              ; preds = %257
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %258, ptr noundef nonnull %259)
  %262 = load ptr, ptr %61, align 8, !tbaa !68
  %263 = icmp eq ptr %262, null
  br i1 %263, label %278, label %264

264:                                              ; preds = %261
  %265 = load i16, ptr %262, align 2, !tbaa !71
  %266 = icmp eq i16 %265, 0
  br i1 %266, label %278, label %267

267:                                              ; preds = %264, %267
  %268 = phi ptr [ %269, %267 ], [ %262, %264 ]
  %269 = getelementptr inbounds i16, ptr %268, i64 1
  %270 = load i16, ptr %269, align 2, !tbaa !71
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %267, !llvm.loop !73

272:                                              ; preds = %267
  %273 = ptrtoint ptr %269 to i64
  %274 = ptrtoint ptr %262 to i64
  %275 = sub i64 %273, %274
  %276 = lshr exact i64 %275, 1
  %277 = and i64 %276, 4294967295
  br label %278

278:                                              ; preds = %261, %264, %272
  %279 = phi i64 [ %277, %272 ], [ 0, %264 ], [ 0, %261 ]
  %280 = getelementptr inbounds i16, ptr %258, i64 %279
  br label %281

281:                                              ; preds = %278, %257
  %282 = phi ptr [ %280, %278 ], [ %258, %257 ]
  %283 = load ptr, ptr %79, align 8, !tbaa !69
  %284 = icmp eq ptr %283, null
  br i1 %284, label %306, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds i16, ptr %282, i64 1
  store i16 63, ptr %282, align 2, !tbaa !71
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %286, ptr noundef nonnull %283)
  %287 = load ptr, ptr %79, align 8, !tbaa !69
  %288 = icmp eq ptr %287, null
  br i1 %288, label %303, label %289

289:                                              ; preds = %285
  %290 = load i16, ptr %287, align 2, !tbaa !71
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %303, label %292

292:                                              ; preds = %289, %292
  %293 = phi ptr [ %294, %292 ], [ %287, %289 ]
  %294 = getelementptr inbounds i16, ptr %293, i64 1
  %295 = load i16, ptr %294, align 2, !tbaa !71
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %297, label %292, !llvm.loop !73

297:                                              ; preds = %292
  %298 = ptrtoint ptr %294 to i64
  %299 = ptrtoint ptr %287 to i64
  %300 = sub i64 %298, %299
  %301 = lshr exact i64 %300, 1
  %302 = and i64 %301, 4294967295
  br label %303

303:                                              ; preds = %285, %289, %297
  %304 = phi i64 [ %302, %297 ], [ 0, %289 ], [ 0, %285 ]
  %305 = getelementptr inbounds i16, ptr %286, i64 %304
  br label %306

306:                                              ; preds = %303, %281
  %307 = phi ptr [ %305, %303 ], [ %282, %281 ]
  %308 = load ptr, ptr %21, align 8, !tbaa !70
  %309 = icmp eq ptr %308, null
  br i1 %309, label %331, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds i16, ptr %307, i64 1
  store i16 35, ptr %307, align 2, !tbaa !71
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %311, ptr noundef nonnull %308)
  %312 = load ptr, ptr %21, align 8, !tbaa !70
  %313 = icmp eq ptr %312, null
  br i1 %313, label %328, label %314

314:                                              ; preds = %310
  %315 = load i16, ptr %312, align 2, !tbaa !71
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %328, label %317

317:                                              ; preds = %314, %317
  %318 = phi ptr [ %319, %317 ], [ %312, %314 ]
  %319 = getelementptr inbounds i16, ptr %318, i64 1
  %320 = load i16, ptr %319, align 2, !tbaa !71
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %322, label %317, !llvm.loop !73

322:                                              ; preds = %317
  %323 = ptrtoint ptr %319 to i64
  %324 = ptrtoint ptr %312 to i64
  %325 = sub i64 %323, %324
  %326 = lshr exact i64 %325, 1
  %327 = and i64 %326, 4294967295
  br label %328

328:                                              ; preds = %310, %314, %322
  %329 = phi i64 [ %327, %322 ], [ 0, %314 ], [ 0, %310 ]
  %330 = getelementptr inbounds i16, ptr %311, i64 %329
  br label %331

331:                                              ; preds = %328, %306
  %332 = phi ptr [ %330, %328 ], [ %307, %306 ]
  store i16 0, ptr %332, align 2, !tbaa !71
  ret void
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEPKS0_PKt(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !53 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %10, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !71
  %6 = zext i16 %5 to i64
  %7 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !122
  %9 = icmp slt i8 %8, 0
  %10 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %9, label %3, label %11, !llvm.loop !123

11:                                               ; preds = %3
  %12 = icmp eq i16 %5, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %15, %13 ], [ %4, %11 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !llvm.loop !73

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %4 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %11, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %11 ]
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi i32 [ %39, %31 ], [ %25, %24 ]
  %29 = phi i64 [ %32, %31 ], [ %26, %24 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = add nsw i64 %29, -1
  %33 = getelementptr inbounds i16, ptr %4, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !71
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !122
  %38 = icmp slt i8 %37, 0
  %39 = add i32 %28, -1
  br i1 %38, label %27, label %42, !llvm.loop !124

40:                                               ; preds = %27
  %41 = icmp ne ptr %0, null
  br label %132

42:                                               ; preds = %31
  %43 = trunc i64 %29 to i32
  %44 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 58)
  %45 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 47)
  %46 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 63)
  %47 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 35)
  %48 = icmp slt i32 %44, 1
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = icmp sgt i32 %44, %45
  %51 = icmp ne i32 %45, -1
  %52 = and i1 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = icmp sgt i32 %44, %46
  %55 = icmp ne i32 %46, -1
  %56 = and i1 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = icmp sgt i32 %44, %47
  %59 = icmp ne i32 %47, -1
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %53, %49, %42
  %62 = icmp eq i32 %44, 0
  br i1 %62, label %132, label %63

63:                                               ; preds = %61
  %64 = icmp eq ptr %0, null
  %65 = icmp ne i32 %47, 0
  %66 = and i1 %64, %65
  br i1 %66, label %132, label %81

67:                                               ; preds = %57
  %68 = tail call noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef nonnull %4, ptr noundef nonnull @_ZN11xercesc_2_7L17SCHEME_SEPARATORSE)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = ptrtoint ptr %68 to i64
  %72 = ptrtoint ptr %4 to i64
  %73 = sub i64 %71, %72
  %74 = lshr exact i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti(ptr noundef nonnull %4, i32 noundef %75)
  %77 = add nsw i32 %75, 1
  br label %78

78:                                               ; preds = %67, %70
  %79 = phi i32 [ 1, %67 ], [ %77, %70 ]
  %80 = phi i1 [ false, %67 ], [ %76, %70 ]
  br i1 %80, label %81, label %132

81:                                               ; preds = %78, %63
  %82 = phi i32 [ 0, %63 ], [ %79, %78 ]
  %83 = phi i1 [ false, %63 ], [ true, %78 ]
  %84 = icmp eq i32 %82, %43
  br i1 %84, label %132, label %85

85:                                               ; preds = %81
  br i1 %83, label %86, label %91

86:                                               ; preds = %85
  %87 = sext i32 %82 to i64
  %88 = getelementptr inbounds i16, ptr %4, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !71
  %90 = icmp eq i16 %89, 35
  br i1 %90, label %132, label %91

91:                                               ; preds = %86, %85
  %92 = add nsw i32 %82, 1
  %93 = icmp slt i32 %92, %43
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  %95 = sext i32 %82 to i64
  %96 = getelementptr inbounds i16, ptr %4, i64 %95
  %97 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %96, ptr noundef nonnull @_ZN11xercesc_2_7L12DOUBLE_SLASHE, i32 noundef 2)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %94
  %100 = add nsw i32 %82, 2
  %101 = icmp slt i32 %100, %43
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = sext i32 %100 to i64
  %104 = shl i64 %29, 32
  %105 = ashr exact i64 %104, 32
  br label %106

106:                                              ; preds = %102, %110
  %107 = phi i64 [ %103, %102 ], [ %111, %110 ]
  %108 = getelementptr inbounds i16, ptr %4, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !71
  switch i16 %109, label %110 [
    i16 63, label %113
    i16 47, label %113
    i16 35, label %113
  ]

110:                                              ; preds = %106
  %111 = add nsw i64 %107, 1
  %112 = icmp slt i64 %111, %105
  br i1 %112, label %106, label %115, !llvm.loop !125

113:                                              ; preds = %106, %106, %106
  %114 = trunc i64 %107 to i32
  br label %115

115:                                              ; preds = %113, %110, %99
  %116 = phi i32 [ %100, %99 ], [ %114, %113 ], [ %28, %110 ]
  %117 = icmp sgt i32 %116, %100
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = sext i32 %100 to i64
  %120 = getelementptr inbounds i16, ptr %4, i64 %119
  %121 = sub nsw i32 %116, %100
  %122 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti(ptr noundef nonnull %120, i32 noundef %121)
  br i1 %122, label %123, label %132

123:                                              ; preds = %115, %118, %94, %91
  %124 = phi i32 [ %116, %118 ], [ %116, %115 ], [ %82, %94 ], [ %82, %91 ]
  %125 = icmp slt i32 %124, %43
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = sext i32 %124 to i64
  %128 = getelementptr inbounds i16, ptr %4, i64 %127
  %129 = sub nsw i32 %43, %124
  %130 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11processPathEPKtib(ptr noundef nonnull %128, i32 noundef %129, i1 noundef zeroext %83)
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %126, %118, %81, %63, %61, %78, %86, %131, %40
  %133 = phi i1 [ %41, %40 ], [ false, %63 ], [ false, %61 ], [ false, %78 ], [ false, %86 ], [ true, %131 ], [ false, %81 ], [ false, %118 ], [ false, %126 ]
  ret i1 %133
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi(ptr noundef %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L17SCHEME_SEPARATORSE)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 1
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %1, align 4, !tbaa !118
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti(ptr noundef %0, i32 noundef %10)
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi i1 [ %11, %5 ], [ false, %2 ]
  ret i1 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !102 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %0, i16 noundef zeroext 64)
  %4 = icmp ne i32 %3, -1
  %5 = icmp slt i32 %3, %1
  %6 = and i1 %4, %5
  %7 = add nuw nsw i32 %3, 1
  %8 = select i1 %6, i32 %7, i32 0, !prof !106
  %9 = select i1 %6, ptr %0, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, !prof !106
  %10 = select i1 %6, i32 %3, i32 0, !prof !106
  %11 = icmp slt i32 %8, %1
  br i1 %11, label %12, label %33, !prof !126

12:                                               ; preds = %2
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !71
  %16 = icmp eq i16 %15, 91
  br i1 %16, label %17, label %33, !prof !106

17:                                               ; preds = %12
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %14, i16 noundef zeroext 93)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %39, label %20

20:                                               ; preds = %17
  %21 = icmp slt i32 %18, %1
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = add i32 %8, 1
  %24 = add i32 %23, %18
  %25 = icmp slt i32 %24, %1
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds i16, ptr %0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !71
  %30 = icmp eq i16 %29, 58
  %31 = add nuw nsw i32 %18, 1
  %32 = select i1 %30, i32 %31, i32 -1
  br label %39

33:                                               ; preds = %12, %2
  %34 = sext i32 %8 to i64
  %35 = getelementptr inbounds i16, ptr %0, i64 %34
  %36 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %35, i16 noundef zeroext 58)
  %37 = icmp slt i32 %36, %1
  %38 = select i1 %37, i32 %36, i32 -1, !prof !126
  br label %39

39:                                               ; preds = %26, %22, %17, %20, %33
  %40 = phi i32 [ %18, %20 ], [ -1, %17 ], [ %38, %33 ], [ -1, %22 ], [ %32, %26 ]
  %41 = sext i32 %8 to i64
  %42 = getelementptr inbounds i16, ptr %0, i64 %41
  %43 = icmp eq i32 %40, -1
  %44 = add i32 %8, 1
  %45 = add i32 %44, %40
  %46 = sub nsw i32 %1, %8
  %47 = select i1 %43, i32 %1, i32 %45, !prof !126
  %48 = select i1 %43, i32 %46, i32 %40, !prof !126
  %49 = icmp ne i32 %48, 0
  %50 = icmp slt i32 %47, %1
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %79, !prof !106

52:                                               ; preds = %39
  %53 = sext i32 %47 to i64
  %54 = getelementptr inbounds i16, ptr %0, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !71
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = sub nsw i32 %1, %47
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %69
  %63 = phi i64 [ 0, %60 ], [ %74, %69 ]
  %64 = phi i32 [ 0, %60 ], [ %73, %69 ]
  %65 = getelementptr inbounds i16, ptr %54, i64 %63
  %66 = load i16, ptr %65, align 2, !tbaa !71
  %67 = add i16 %66, -48
  %68 = icmp ult i16 %67, 10
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = zext nneg i16 %66 to i32
  %71 = mul nsw i32 %64, 10
  %72 = add i32 %71, -48
  %73 = add i32 %72, %70
  %74 = add nuw nsw i64 %63, 1
  %75 = icmp eq i64 %74, %61
  br i1 %75, label %76, label %62, !llvm.loop !127

76:                                               ; preds = %62, %69, %57, %52
  %77 = phi i32 [ -1, %52 ], [ 0, %57 ], [ %73, %69 ], [ %64, %62 ]
  %78 = phi i1 [ true, %52 ], [ true, %57 ], [ %68, %69 ], [ %68, %62 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %76, %39
  %80 = phi i32 [ %77, %76 ], [ -1, %39 ]
  %81 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i(ptr noundef %42, i32 noundef %48, i32 noundef %80, ptr noundef %9, i32 noundef %10)
  br i1 %81, label %84, label %82, !prof !126

82:                                               ; preds = %79
  %83 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKti(ptr noundef %0, i32 noundef %1)
  br label %84

84:                                               ; preds = %76, %79, %82
  %85 = phi i1 [ true, %79 ], [ %83, %82 ], [ false, %76 ]
  ret i1 %85
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11processPathEPKtib(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #9 align 2 !prof !102 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %98, label %5, !prof !106

5:                                                ; preds = %3
  br i1 %2, label %6, label %9, !prof !126

6:                                                ; preds = %5
  %7 = load i16, ptr %0, align 2, !tbaa !71
  %8 = icmp eq i16 %7, 47
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i1 [ true, %5 ], [ %8, %6 ]
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %48, !prof !128

12:                                               ; preds = %9
  %13 = zext nneg i32 %1 to i64
  br label %14

14:                                               ; preds = %12, %43
  %15 = phi i64 [ 0, %12 ], [ %44, %43 ]
  %16 = getelementptr inbounds i16, ptr %0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !71
  switch i16 %17, label %30 [
    i16 63, label %46
    i16 35, label %46
    i16 37, label %18
  ], !prof !129

18:                                               ; preds = %14
  %19 = add nuw nsw i64 %15, 2
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %22, label %98

22:                                               ; preds = %18
  %23 = getelementptr i16, ptr %16, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !71
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %24)
  br i1 %25, label %26, label %98

26:                                               ; preds = %22
  %27 = getelementptr inbounds i16, ptr %0, i64 %19
  %28 = load i16, ptr %27, align 2, !tbaa !71
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %28)
  br i1 %29, label %43, label %98

30:                                               ; preds = %14
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %17)
  br i1 %31, label %43, label %32, !prof !130

32:                                               ; preds = %30
  %33 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %17)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %43, !prof !131

35:                                               ; preds = %32
  br i1 %10, label %36, label %40, !prof !132

36:                                               ; preds = %35
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15PATH_CHARACTERSE, i16 noundef zeroext %17)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %98, label %39, !prof !133

39:                                               ; preds = %36
  br i1 %10, label %43, label %40, !prof !132

40:                                               ; preds = %39, %35
  %41 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19RESERVED_CHARACTERSE, i16 noundef zeroext %17)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %98, label %43

43:                                               ; preds = %30, %32, %39, %40, %26
  %44 = add nuw nsw i64 %15, 1
  %45 = icmp eq i64 %44, %13
  br i1 %45, label %48, label %14, !prof !134, !llvm.loop !135

46:                                               ; preds = %14, %14
  %47 = trunc i64 %15 to i32
  br label %48

48:                                               ; preds = %46, %43, %9
  %49 = phi i32 [ 0, %9 ], [ %47, %46 ], [ %1, %43 ]
  %50 = phi i16 [ 0, %9 ], [ %17, %43 ], [ %17, %46 ]
  switch i16 %50, label %98 [
    i16 63, label %51
    i16 35, label %51
  ], !prof !136

51:                                               ; preds = %48, %48
  %52 = getelementptr i16, ptr %0, i64 2
  %53 = add nsw i32 %49, 1
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  %56 = icmp ne i16 %50, 63
  %57 = sext i32 %1 to i64
  br label %62

58:                                               ; preds = %67
  %59 = trunc i64 %68 to i32
  %60 = add nsw i32 %59, 1
  %61 = icmp slt i32 %60, %1
  br i1 %61, label %62, label %98, !llvm.loop !137

62:                                               ; preds = %55, %58
  %63 = phi i32 [ %60, %58 ], [ %53, %55 ]
  %64 = phi i1 [ true, %58 ], [ %56, %55 ]
  %65 = phi i32 [ %59, %58 ], [ %49, %55 ]
  %66 = sext i32 %63 to i64
  br label %67

67:                                               ; preds = %62, %94
  %68 = phi i64 [ %66, %62 ], [ %95, %94 ]
  %69 = phi i32 [ %65, %62 ], [ %97, %94 ]
  %70 = getelementptr inbounds i16, ptr %0, i64 %68
  %71 = load i16, ptr %70, align 2, !tbaa !71
  %72 = icmp ne i16 %71, 35
  %73 = or i1 %72, %64
  br i1 %73, label %74, label %58

74:                                               ; preds = %67
  %75 = icmp eq i16 %71, 37
  br i1 %75, label %76, label %89

76:                                               ; preds = %74
  %77 = add nsw i32 %69, 3
  %78 = icmp slt i32 %77, %1
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = sext i32 %69 to i64
  %81 = getelementptr i16, ptr %52, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !71
  %83 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %82)
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = sext i32 %77 to i64
  %86 = getelementptr inbounds i16, ptr %0, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !71
  %88 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %87)
  br i1 %88, label %94, label %98

89:                                               ; preds = %74
  %90 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %71)
  br i1 %90, label %94, label %91

91:                                               ; preds = %89
  %92 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE, i16 noundef zeroext %71)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %98, label %94

94:                                               ; preds = %89, %91, %84
  %95 = add nsw i64 %68, 1
  %96 = icmp slt i64 %95, %57
  %97 = trunc i64 %68 to i32
  br i1 %96, label %67, label %98, !llvm.loop !137

98:                                               ; preds = %26, %22, %18, %36, %40, %58, %94, %91, %76, %79, %84, %51, %3, %48
  %99 = phi i1 [ true, %48 ], [ true, %3 ], [ true, %51 ], [ false, %84 ], [ false, %79 ], [ false, %76 ], [ false, %91 ], [ true, %94 ], [ true, %58 ], [ false, %40 ], [ false, %36 ], [ false, %18 ], [ false, %22 ], [ false, %26 ]
  ret i1 %99
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !102 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %10, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !71
  %6 = zext i16 %5 to i64
  %7 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !122
  %9 = icmp slt i8 %8, 0
  %10 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %9, label %3, label %11, !prof !106, !llvm.loop !138

11:                                               ; preds = %3
  %12 = icmp eq i16 %5, 0
  br i1 %12, label %24, label %13, !prof !106

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %15, %13 ], [ %4, %11 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !prof !139, !llvm.loop !73

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %4 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %11, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %11 ]
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi i32 [ %39, %31 ], [ %25, %24 ]
  %29 = phi i64 [ %32, %31 ], [ %26, %24 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %150, label %31, !prof !106

31:                                               ; preds = %27
  %32 = add nsw i64 %29, -1
  %33 = getelementptr inbounds i16, ptr %4, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !71
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !122
  %38 = icmp slt i8 %37, 0
  %39 = add i32 %28, -1
  br i1 %38, label %27, label %40, !prof !106, !llvm.loop !140

40:                                               ; preds = %31
  %41 = trunc i64 %29 to i32
  %42 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 58)
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 47)
  %44 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 63)
  %45 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %4, i16 noundef zeroext 35)
  %46 = icmp slt i32 %42, 1
  br i1 %46, label %59, label %47, !prof !106

47:                                               ; preds = %40
  %48 = icmp sgt i32 %42, %43
  %49 = icmp ne i32 %43, -1
  %50 = and i1 %48, %49
  br i1 %50, label %59, label %51, !prof !106

51:                                               ; preds = %47
  %52 = icmp sgt i32 %42, %44
  %53 = icmp ne i32 %44, -1
  %54 = and i1 %52, %53
  br i1 %54, label %59, label %55, !prof !106

55:                                               ; preds = %51
  %56 = icmp sgt i32 %42, %45
  %57 = icmp ne i32 %45, -1
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %64, !prof !106

59:                                               ; preds = %55, %51, %47, %40
  %60 = icmp ne i32 %42, 0
  %61 = icmp eq i32 %45, 0
  %62 = or i1 %61, %0
  %63 = and i1 %60, %62
  br i1 %63, label %99, label %150

64:                                               ; preds = %55
  %65 = tail call noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef nonnull %4, ptr noundef nonnull @_ZN11xercesc_2_7L17SCHEME_SEPARATORSE)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %96, label %67, !prof !106

67:                                               ; preds = %64
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %4 to i64
  %70 = sub i64 %68, %69
  %71 = lshr exact i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = load i16, ptr %4, align 2, !tbaa !71
  %74 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext %73)
  br i1 %74, label %75, label %93, !prof !126

75:                                               ; preds = %67
  %76 = icmp slt i32 %72, 2
  br i1 %76, label %93, label %77, !prof !108

77:                                               ; preds = %75
  %78 = and i64 %71, 4294967295
  br label %79

79:                                               ; preds = %89, %77
  %80 = phi i64 [ 1, %77 ], [ %90, %89 ]
  %81 = phi i1 [ false, %77 ], [ %91, %89 ]
  %82 = getelementptr inbounds i16, ptr %4, i64 %80
  %83 = load i16, ptr %82, align 2, !tbaa !71
  %84 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %83)
  br i1 %84, label %89, label %85, !prof !141

85:                                               ; preds = %79
  %86 = load i16, ptr %82, align 2, !tbaa !71
  %87 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE, i16 noundef zeroext %86)
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %93, label %89

89:                                               ; preds = %85, %79
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp uge i64 %90, %78
  %92 = icmp eq i64 %90, %78
  br i1 %92, label %93, label %79, !prof !142, !llvm.loop !143

93:                                               ; preds = %85, %89, %67, %75
  %94 = phi i1 [ false, %67 ], [ %76, %75 ], [ %91, %89 ], [ %81, %85 ]
  %95 = add nsw i32 %72, 1
  br label %96

96:                                               ; preds = %64, %93
  %97 = phi i32 [ 1, %64 ], [ %95, %93 ]
  %98 = phi i1 [ false, %64 ], [ %94, %93 ]
  br i1 %98, label %99, label %150, !prof !126

99:                                               ; preds = %96, %59
  %100 = phi i32 [ 0, %59 ], [ %97, %96 ]
  %101 = phi i1 [ false, %59 ], [ true, %96 ]
  %102 = icmp eq i32 %100, %41
  br i1 %102, label %150, label %103, !prof !106

103:                                              ; preds = %99
  br i1 %101, label %104, label %109, !prof !126

104:                                              ; preds = %103
  %105 = sext i32 %100 to i64
  %106 = getelementptr inbounds i16, ptr %4, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !71
  %108 = icmp eq i16 %107, 35
  br i1 %108, label %150, label %109, !prof !106

109:                                              ; preds = %104, %103
  %110 = add nsw i32 %100, 1
  %111 = icmp slt i32 %110, %41
  br i1 %111, label %112, label %141, !prof !126

112:                                              ; preds = %109
  %113 = sext i32 %100 to i64
  %114 = getelementptr inbounds i16, ptr %4, i64 %113
  %115 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %114, ptr noundef nonnull @_ZN11xercesc_2_7L12DOUBLE_SLASHE, i32 noundef 2)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %141, !prof !126

117:                                              ; preds = %112
  %118 = add nsw i32 %100, 2
  %119 = icmp slt i32 %118, %41
  br i1 %119, label %120, label %133, !prof !144

120:                                              ; preds = %117
  %121 = sext i32 %118 to i64
  %122 = shl i64 %29, 32
  %123 = ashr exact i64 %122, 32
  br label %124

124:                                              ; preds = %120, %128
  %125 = phi i64 [ %121, %120 ], [ %129, %128 ]
  %126 = getelementptr inbounds i16, ptr %4, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !71
  switch i16 %127, label %128 [
    i16 63, label %131
    i16 47, label %131
    i16 35, label %131
  ], !prof !145

128:                                              ; preds = %124
  %129 = add nsw i64 %125, 1
  %130 = icmp slt i64 %129, %123
  br i1 %130, label %124, label %133, !prof !146, !llvm.loop !147

131:                                              ; preds = %124, %124, %124
  %132 = trunc i64 %125 to i32
  br label %133

133:                                              ; preds = %131, %128, %117
  %134 = phi i32 [ %118, %117 ], [ %132, %131 ], [ %28, %128 ]
  %135 = icmp sgt i32 %134, %118
  br i1 %135, label %136, label %141, !prof !126

136:                                              ; preds = %133
  %137 = sext i32 %118 to i64
  %138 = getelementptr inbounds i16, ptr %4, i64 %137
  %139 = sub nsw i32 %134, %118
  %140 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti(ptr noundef nonnull %138, i32 noundef %139)
  br i1 %140, label %141, label %150, !prof !126

141:                                              ; preds = %133, %136, %112, %109
  %142 = phi i32 [ %134, %136 ], [ %134, %133 ], [ %100, %112 ], [ %100, %109 ]
  %143 = icmp slt i32 %142, %41
  br i1 %143, label %144, label %149, !prof !126

144:                                              ; preds = %141
  %145 = sext i32 %142 to i64
  %146 = getelementptr inbounds i16, ptr %4, i64 %145
  %147 = sub nsw i32 %41, %142
  %148 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11processPathEPKtib(ptr noundef nonnull %146, i32 noundef %147, i1 noundef zeroext %101)
  br i1 %148, label %149, label %150, !prof !126

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %27, %144, %136, %99, %59, %96, %104, %149
  %151 = phi i1 [ false, %59 ], [ false, %96 ], [ false, %104 ], [ true, %149 ], [ false, %99 ], [ false, %136 ], [ false, %144 ], [ %0, %27 ]
  ret i1 %151
}

declare noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !53 {
  %3 = load i16, ptr %0, align 2, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext %3)
  br i1 %4, label %5, label %24, !prof !126

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 2
  br i1 %6, label %24, label %7, !prof !108

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %20
  %11 = phi i64 [ 1, %7 ], [ %21, %20 ]
  %12 = phi i1 [ %6, %7 ], [ %22, %20 ]
  %13 = getelementptr inbounds i16, ptr %0, i64 %11
  %14 = load i16, ptr %13, align 2, !tbaa !71
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %14)
  br i1 %15, label %20, label %16, !prof !141

16:                                               ; preds = %10
  %17 = load i16, ptr %13, align 2, !tbaa !71
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE, i16 noundef zeroext %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %10, %16
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp uge i64 %21, %8
  %23 = icmp eq i64 %21, %9
  br i1 %23, label %24, label %10, !prof !142, !llvm.loop !143

24:                                               ; preds = %16, %20, %5, %2
  %25 = phi i1 [ false, %2 ], [ %6, %5 ], [ %22, %20 ], [ %12, %16 ]
  ret i1 %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !148 {
  store i32 0, ptr %1, align 8, !tbaa !149
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  store i16 0, ptr %4, align 2, !tbaa !71
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %6

6:                                                ; preds = %42, %2
  %7 = phi ptr [ %0, %2 ], [ %43, %42 ]
  %8 = load i16, ptr %7, align 2, !tbaa !71
  switch i16 %8, label %30 [
    i16 0, label %44
    i16 37, label %9
  ], !prof !153

9:                                                ; preds = %6
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !71
  %12 = icmp eq i16 %11, 50
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds i16, ptr %7, i64 2
  %15 = load i16, ptr %14, align 2, !tbaa !71
  %16 = icmp eq i16 %15, 48
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds i16, ptr %7, i64 3
  %20 = load i32, ptr %1, align 8, !tbaa !149
  %21 = load i32, ptr %18, align 4, !tbaa !154
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %24

24:                                               ; preds = %17, %23
  %25 = load ptr, ptr %3, align 8, !tbaa !152
  %26 = load i32, ptr %1, align 8, !tbaa !149
  %27 = add i32 %26, 1
  store i32 %27, ptr %1, align 8, !tbaa !149
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i16, ptr %25, i64 %28
  store i16 32, ptr %29, align 2, !tbaa !71
  br label %42

30:                                               ; preds = %6, %13, %9
  %31 = load i32, ptr %1, align 8, !tbaa !149
  %32 = load i32, ptr %5, align 4, !tbaa !154
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35, !prof !155

34:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %35

35:                                               ; preds = %30, %34
  %36 = load ptr, ptr %3, align 8, !tbaa !152
  %37 = load i32, ptr %1, align 8, !tbaa !149
  %38 = add i32 %37, 1
  store i32 %38, ptr %1, align 8, !tbaa !149
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i16, ptr %36, i64 %39
  store i16 %8, ptr %40, align 2, !tbaa !71
  %41 = getelementptr inbounds i16, ptr %7, i64 1
  br label %42

42:                                               ; preds = %35, %24
  %43 = phi ptr [ %19, %24 ], [ %41, %35 ]
  br label %6, !llvm.loop !156

44:                                               ; preds = %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76XMLUri12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %2, i64 0, i32 1
  store i32 -1, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %2, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !63
  ret ptr %2
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLUri14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !53 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_76XMLUri12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !53 {
  ret ptr @_ZN11xercesc_2_76XMLUri11classXMLUriE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load i16, ptr %1, align 8, !tbaa !157
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  br i1 %20, label %22, label %41

22:                                               ; preds = %2
  %23 = load i32, ptr %21, align 8, !tbaa !57
  %24 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %23)
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %26, i32 noundef 0, i1 noundef zeroext false)
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %28, i32 noundef 0, i1 noundef zeroext false)
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %30, i32 noundef 0, i1 noundef zeroext false)
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %32, i32 noundef 0, i1 noundef zeroext false)
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %34, i32 noundef 0, i1 noundef zeroext false)
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %36, i32 noundef 0, i1 noundef zeroext false)
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %38, i32 noundef 0, i1 noundef zeroext false)
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %40, i32 noundef 0, i1 noundef zeroext false)
  br label %51

41:                                               ; preds = %2
  %42 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %21)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 4 dereferenceable(4) %17, ptr noundef nonnull align 4 dereferenceable(4) %18, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #16
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %51

51:                                               ; preds = %41, %22
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !54
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(none) }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 299}
!36 = !{ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 50}
!37 = !{ptr @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i, ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, i64 6402}
!38 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj, i64 6402}
!39 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_79XMLString7isDigitEt, i64 6402}
!40 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 96879}
!41 = !{ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 12804}
!42 = !{ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, ptr @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i, i64 6402}
!43 = !{ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 58100}
!44 = !{ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 19235}
!45 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 25608}
!46 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_, i64 6402}
!47 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString7isAlphaEt, i64 6402}
!48 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 19206}
!49 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 6402}
!50 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, i64 6402}
!51 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, i64 6402}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!58, !60, i64 8}
!58 = !{!"_ZTSN11xercesc_2_76XMLUriE", !59, i64 0, !60, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80}
!59 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !56, i64 0}
!62 = !{!"any pointer", !61, i64 0}
!63 = !{!58, !62, i64 80}
!64 = !{!58, !62, i64 16}
!65 = !{!58, !62, i64 24}
!66 = !{!58, !62, i64 32}
!67 = !{!58, !62, i64 40}
!68 = !{!58, !62, i64 48}
!69 = !{!58, !62, i64 56}
!70 = !{!58, !62, i64 64}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !61, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!77, !62, i64 0}
!77 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !62, i64 0, !62, i64 8}
!78 = !{!77, !62, i64 8}
!79 = distinct !{!79, !74, !75}
!80 = distinct !{!80, !74, !75}
!81 = distinct !{!81, !74, !75}
!82 = distinct !{!82, !74, !75}
!83 = distinct !{!83, !74, !75}
!84 = distinct !{!84, !74, !75}
!85 = distinct !{!85, !74, !75}
!86 = !{!"function_entry_count", i64 243874}
!87 = !{!"branch_weights", i32 191815, i32 52059}
!88 = !{!"branch_weights", i32 0, i32 52059}
!89 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!90 = distinct !{!90, !74, !75}
!91 = distinct !{!91, !74, !75}
!92 = distinct !{!92, !74, !75}
!93 = distinct !{!93, !74, !75}
!94 = distinct !{!94, !74, !75}
!95 = !{!"function_entry_count", i64 4}
!96 = !{!"branch_weights", i32 0, i32 4}
!97 = !{!"branch_weights", i32 1, i32 127}
!98 = !{!"branch_weights", i32 249, i32 50}
!99 = !{!"branch_weights", i32 0, i32 50}
!100 = !{!"branch_weights", i32 127, i32 9441}
!101 = distinct !{!101, !74, !75}
!102 = !{!"function_entry_count", i64 6402}
!103 = !{!"branch_weights", i32 40985604, i32 0}
!104 = !{!"branch_weights", i32 0, i32 1}
!105 = distinct !{!105, !74, !75}
!106 = !{!"branch_weights", i32 0, i32 6402}
!107 = !{!"branch_weights", i32 6402, i32 0, i32 0, i32 0}
!108 = !{!"branch_weights", i32 1, i32 6401}
!109 = !{!"branch_weights", i32 12804, i32 71271}
!110 = !{!"branch_weights", i32 0, i32 12804}
!111 = !{!"branch_weights", i32 12804, i32 0}
!112 = !{!"branch_weights", i32 70858, i32 413}
!113 = !{!"branch_weights", i32 0, i32 413}
!114 = !{!"branch_weights", i32 0, i32 70858}
!115 = !{!"branch_weights", i32 6401, i32 77674}
!116 = distinct !{!116, !74, !75}
!117 = distinct !{!117, !74, !75}
!118 = !{!60, !60, i64 0}
!119 = distinct !{!119, !74, !75}
!120 = distinct !{!120, !74, !75}
!121 = !{!58, !62, i64 72}
!122 = !{!61, !61, i64 0}
!123 = distinct !{!123, !74, !75}
!124 = distinct !{!124, !74, !75}
!125 = distinct !{!125, !74, !75}
!126 = !{!"branch_weights", i32 6402, i32 0}
!127 = distinct !{!127, !74, !75}
!128 = !{!"branch_weights", i32 6401, i32 1}
!129 = !{!"branch_weights", i32 58100, i32 0, i32 0, i32 0}
!130 = !{!"branch_weights", i32 45269, i32 12831}
!131 = !{!"branch_weights", i32 6404, i32 6427}
!132 = !{!"branch_weights", i32 6404, i32 0}
!133 = !{!"branch_weights", i32 0, i32 6404}
!134 = !{!"branch_weights", i32 6401, i32 51699}
!135 = distinct !{!135, !74, !75}
!136 = !{!"branch_weights", i32 6402, i32 0, i32 0}
!137 = distinct !{!137, !74, !75}
!138 = distinct !{!138, !74, !75}
!139 = !{!"branch_weights", i32 6402, i32 180587}
!140 = distinct !{!140, !74, !75}
!141 = !{!"branch_weights", i32 19206, i32 0}
!142 = !{!"branch_weights", i32 6401, i32 12805}
!143 = distinct !{!143, !74, !75}
!144 = !{!"branch_weights", i32 1, i32 0}
!145 = !{!"branch_weights", i32 84075, i32 0, i32 6402, i32 0}
!146 = !{!"branch_weights", i32 90477, i32 0}
!147 = distinct !{!147, !74, !75}
!148 = !{!"function_entry_count", i64 1}
!149 = !{!150, !60, i64 0}
!150 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !60, i64 0, !60, i64 4, !60, i64 8, !151, i64 12, !62, i64 16, !62, i64 24, !62, i64 32}
!151 = !{!"bool", !61, i64 0}
!152 = !{!150, !62, i64 32}
!153 = !{!"branch_weights", i32 9, i32 1, i32 0}
!154 = !{!150, !60, i64 4}
!155 = !{!"branch_weights", i32 0, i32 9}
!156 = distinct !{!156, !74, !75}
!157 = !{!158, !72, i64 0}
!158 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !72, i64 0, !72, i64 2, !62, i64 8, !62, i64 16, !62, i64 24, !159, i64 32, !159, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !60, i64 96}
!159 = !{!"long", !61, i64 0}
!160 = !{!161, !62, i64 40}
!161 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !162, i64 8, !62, i64 16, !60, i64 24, !62, i64 32, !62, i64 40}
!162 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !61, i64 0}
