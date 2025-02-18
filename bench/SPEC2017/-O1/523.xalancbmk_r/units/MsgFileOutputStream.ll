; ModuleID = 'MsgFileOutputStream.cpp'
source_filename = "MsgFileOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.XalanFileOutputStream = type { ptr, ptr, ptr }
%"class.XalanFileOutputStream::XalanFileOutputStreamOpenException" = type { ptr, ptr }
%"class.XalanFileOutputStream::XalanFileOutputStreamWriteException" = type { ptr, ptr }

@_ZTV21XalanFileOutputStream = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI21XalanFileOutputStream, ptr @_ZN21XalanFileOutputStreamD2Ev, ptr @_ZN21XalanFileOutputStreamD0Ev] }, align 8
@_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev, ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Error opening file: \00", align 1
@_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev, ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev] }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Error writing file: \00", align 1
@_ZL20s_UTF16ByteOrderMark = internal constant [2 x i16] [i16 -257, i16 0], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant [62 x i8] c"N21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE\00", align 1
@_ZTIN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE }, align 8
@_ZTS21XalanFileOutputStream = dso_local constant [24 x i8] c"21XalanFileOutputStream\00", align 1
@_ZTI21XalanFileOutputStream = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS21XalanFileOutputStream }, align 8
@_ZTSN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant [63 x i8] c"N21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE\00", align 1
@_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE }, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c".  The C++ run-time error code (errno) is \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

@_ZN21XalanFileOutputStreamC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN21XalanFileOutputStreamC2EPKc
@_ZN21XalanFileOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21XalanFileOutputStreamD2Ev
@_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2EPKci
@_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev
@_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci
@_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStreamC2EPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV21XalanFileOutputStream, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %5 = tail call noalias noundef ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.4)
  store ptr %5, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  %9 = tail call ptr @__errno_location() #13
  %10 = load i32, ptr %9, align 4, !tbaa !43
  invoke void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr poison, i32 noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, ptr nonnull @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN21XalanFileOutputStreamD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV21XalanFileOutputStream, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN21XalanFileOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV21XalanFileOutputStream, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %1, %5
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream7doFlushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = tail call i32 @fflush(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  %8 = tail call ptr @__errno_location() #13
  %9 = load i32, ptr %8, align 4, !tbaa !43
  invoke void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr poison, i32 noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %class.XalanFileOutputStream, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %4, ptr noundef %6)
  %8 = icmp eq i64 %7, %4
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 16) #12
  %11 = tail call ptr @__errno_location() #13
  %12 = load i32, ptr %11, align 4, !tbaa !43
  invoke void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr poison, i32 noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, ptr nonnull @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev) #14
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #12
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionC2EPKci(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamOpenException", ptr %0, i64 0, i32 1
  %5 = tail call fastcc noundef ptr @_ZL18FormatMessageLocalPKcS0_i(ptr noundef nonnull @.str, i32 noundef %2)
  store ptr %5, ptr %4, align 8, !tbaa !45
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZL18FormatMessageLocalPKcS0_i(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !34 {
  %3 = alloca [20 x i8], align 16
  %4 = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #16
  store i8 0, ptr %4, align 1, !tbaa !47
  %5 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 100) #12
  %6 = getelementptr inbounds i8, ptr %4, i64 100
  store i8 0, ptr %6, align 1, !tbaa !47
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %8, ptr noundef nonnull align 1 dereferenceable(43) @.str.5, i64 43, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  store i8 0, ptr %3, align 16, !tbaa !47
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1) #12
  %10 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 18) #12
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  store i16 46, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamOpenException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #15
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamOpenException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #15
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionC2EPKci(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture readnone %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamWriteException", ptr %0, i64 0, i32 1
  %5 = tail call fastcc noundef ptr @_ZL18FormatMessageLocalPKcS0_i(ptr noundef nonnull @.str.1, i32 noundef %2)
  store ptr %5, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamWriteException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #15
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.XalanFileOutputStream::XalanFileOutputStreamWriteException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #15
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream5writeEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = shl i32 %2, 1
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream5writeEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef %1)
  store ptr %5, ptr %4, align 8, !tbaa !50
  %6 = shl i32 %2, 1
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i32 noundef %6)
  call void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef) local_unnamed_addr #7

declare void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %1)
  store ptr %5, ptr %4, align 8, !tbaa !50
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i32 noundef %2)
  call void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef) local_unnamed_addr #7

declare void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN21XalanFileOutputStream14writeUTFprefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN21XalanFileOutputStream9writeDataEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZL20s_UTF16ByteOrderMark, i32 noundef 2)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

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
!38 = !{!39, !40, i64 8}
!39 = !{!"_ZTS21XalanFileOutputStream", !40, i64 8, !40, i64 16}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!39, !40, i64 16}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !41, i64 0}
!45 = !{!46, !40, i64 8}
!46 = !{!"_ZTSN21XalanFileOutputStream34XalanFileOutputStreamOpenExceptionE", !40, i64 8}
!47 = !{!41, !41, i64 0}
!48 = !{!49, !40, i64 8}
!49 = !{!"_ZTSN21XalanFileOutputStream35XalanFileOutputStreamWriteExceptionE", !40, i64 8}
!50 = !{!40, !40, i64 0}
