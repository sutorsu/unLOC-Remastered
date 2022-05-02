using UnityEngine;

namespace SevenDays.unLOC.Core.Moving
{
    public interface IMovingService
    {
        void StartMove(IMovable movable, Vector3 movingPosition);
        
        void Continue(params IMovable[] movableObjects);
        
        void Stop(params IMovable[] movableObjects);
    }
}