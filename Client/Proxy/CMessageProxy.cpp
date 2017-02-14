#include <SAMP+/client/Client.h>
#include <SAMP+/client/CGame.h>
#include <SAMP+/client/CGraphics.h>
#include <SAMP+/client/Proxy/CMessageProxy.h>
#include <windowsx.h>

HWND CMessageProxy::m_hWindowOrig;
WNDPROC CMessageProxy::m_wProcOrig;

void CMessageProxy::Initialize(HWND hWindow)
{
	if (m_wProcOrig != NULL || m_hWindowOrig == hWindow)
		return;

	m_wProcOrig = (WNDPROC)SetWindowLongPtr(hWindow, GWL_WNDPROC, (LONG)(UINT*)Process);
	m_hWindowOrig = hWindow;
}

HWND CMessageProxy::GetWindowHandle()
{
	return m_hWindowOrig;
}

void CMessageProxy::Uninitialize()
{
	if (m_hWindowOrig == NULL)
		return;

	SetWindowLong(m_hWindowOrig, GWL_WNDPROC, (LONG)(UINT*)m_wProcOrig);
}

WNDPROC CMessageProxy::GetOriginalProcedure()
{
	return m_wProcOrig;
}

//TODO: use Process for something useful
LRESULT CALLBACK CMessageProxy::Process(HWND wnd, UINT umsg, WPARAM wparam, LPARAM lparam)
{
	if (CGame::Playing())
	{
		UINT vKey = (UINT)wparam;
	
		switch (umsg)
		{
			case WM_MOUSEMOVE:
			{
				return 0;
			}
			//case WM_SYSKEYDOWN:
			case WM_KEYDOWN:
			{
				CGame::OnKeyDown(vKey);
				break;
			}
	
			case WM_LBUTTONDOWN:
			{
				CGame::OnMouseClick(0, (UINT16)GET_X_LPARAM(lparam), (UINT16)GET_Y_LPARAM(lparam));
				break;
			}
			case WM_RBUTTONDOWN:
			{
				CGame::OnMouseClick(1, (UINT16) GET_X_LPARAM(lparam), (UINT16) GET_Y_LPARAM(lparam));
				break;
			}
			case WM_MBUTTONDOWN:
			{
				CGame::OnMouseClick(2, (UINT16) GET_X_LPARAM(lparam), (UINT16) GET_Y_LPARAM(lparam));
				break;
			}
		}
	}

	return CallWindowProc(CMessageProxy::GetOriginalProcedure(), wnd, umsg, wparam, lparam);
}

BOOL CMessageProxy::OnSetCursorPos(int iX, int iY)
{
	return CGame::OnCursorMove(iX, iY);
}
